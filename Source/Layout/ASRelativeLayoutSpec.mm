//
//  ASRelativeLayoutSpec.mm
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASRelativeLayoutSpec.h"

#import "ASLayoutSpec+Subclasses.h"
#else
#import <AsyncDisplayKit/ASRelativeLayoutSpec.h>

#import <AsyncDisplayKit/ASLayoutSpec+Subclasses.h>
#endif

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASInternalHelpers.h"
#else
#import <AsyncDisplayKit/ASInternalHelpers.h>
#endif

@implementation ASRelativeLayoutSpec

- (instancetype)initWithHorizontalPosition:(ASRelativeLayoutSpecPosition)horizontalPosition verticalPosition:(ASRelativeLayoutSpecPosition)verticalPosition sizingOption:(ASRelativeLayoutSpecSizingOption)sizingOption child:(id<ASLayoutElement>)child
{
  if (!(self = [super init])) {
    return nil;
  }
  ASDisplayNodeAssertNotNil(child, @"Child cannot be nil");
  _horizontalPosition = horizontalPosition;
  _verticalPosition = verticalPosition;
  _sizingOption = sizingOption;
  [self setChild:child];
  return self;
}

+ (instancetype)relativePositionLayoutSpecWithHorizontalPosition:(ASRelativeLayoutSpecPosition)horizontalPosition verticalPosition:(ASRelativeLayoutSpecPosition)verticalPosition sizingOption:(ASRelativeLayoutSpecSizingOption)sizingOption child:(id<ASLayoutElement>)child NS_RETURNS_RETAINED
{
  return [[self alloc] initWithHorizontalPosition:horizontalPosition verticalPosition:verticalPosition sizingOption:sizingOption child:child];
}

- (void)setHorizontalPosition:(ASRelativeLayoutSpecPosition)horizontalPosition
{
  ASDisplayNodeAssert(self.isMutable, @"Cannot set properties when layout spec is not mutable");
  _horizontalPosition = horizontalPosition;
}

- (void)setVerticalPosition:(ASRelativeLayoutSpecPosition)verticalPosition {
  ASDisplayNodeAssert(self.isMutable, @"Cannot set properties when layout spec is not mutable");
  _verticalPosition = verticalPosition;
}

- (void)setSizingOption:(ASRelativeLayoutSpecSizingOption)sizingOption
{
  ASDisplayNodeAssert(self.isMutable, @"Cannot set properties when layout spec is not mutable");
  _sizingOption = sizingOption;
}

- (ASLayout *)calculateLayoutThatFits:(ASSizeRange)constrainedSize
{
  // If we have a finite size in any direction, pass this so that the child can resolve percentages against it.
  // Otherwise pass ASLayoutElementParentDimensionUndefined as the size will depend on the content
  CGSize size = {
    ASPointsValidForSize(constrainedSize.max.width) == NO ? ASLayoutElementParentDimensionUndefined : constrainedSize.max.width,
    ASPointsValidForSize(constrainedSize.max.height) == NO ? ASLayoutElementParentDimensionUndefined : constrainedSize.max.height
  };
  
  // Layout the child
  const CGSize minChildSize = {
    (_horizontalPosition != ASRelativeLayoutSpecPositionNone) ? 0 : constrainedSize.min.width,
    (_verticalPosition != ASRelativeLayoutSpecPositionNone) ? 0 : constrainedSize.min.height,
  };
  ASLayout *sublayout = [self.child layoutThatFits:ASSizeRangeMake(minChildSize, constrainedSize.max) parentSize:size];
  
  // If we have an undetermined height or width, use the child size to define the layout size
  size = ASSizeRangeClamp(constrainedSize, {
    isfinite(size.width) == NO ? sublayout.size.width : size.width,
    isfinite(size.height) == NO ? sublayout.size.height : size.height
  });
  
  // If minimum size options are set, attempt to shrink the size to the size of the child
  size = ASSizeRangeClamp(constrainedSize, {
    MIN(size.width, (_sizingOption & ASRelativeLayoutSpecSizingOptionMinimumWidth) != 0 ? sublayout.size.width : size.width),
    MIN(size.height, (_sizingOption & ASRelativeLayoutSpecSizingOptionMinimumHeight) != 0 ? sublayout.size.height : size.height)
  });
  
  // Compute the position for the child on each axis according to layout parameters
  CGFloat xPosition = [self proportionOfAxisForAxisPosition:_horizontalPosition];
  CGFloat yPosition = [self proportionOfAxisForAxisPosition:_verticalPosition];
  
  sublayout.position = {
    ASRoundPixelValue((size.width - sublayout.size.width) * xPosition),
    ASRoundPixelValue((size.height - sublayout.size.height) * yPosition)
  };
  
  return [ASLayout layoutWithLayoutElement:self size:size sublayouts:@[sublayout]];
}

- (CGFloat)proportionOfAxisForAxisPosition:(ASRelativeLayoutSpecPosition)position
{
  if (position == ASRelativeLayoutSpecPositionCenter) {
    return 0.5f;
  } else if (position == ASRelativeLayoutSpecPositionEnd) {
    return 1.0f;
  } else {
    return 0.0f;
  }
}

@end
