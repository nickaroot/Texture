//
//  _ASCollectionGalleryLayoutItem.mm
//  Texture
//
//  Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "_ASCollectionGalleryLayoutItem.h"
#else
#import <AsyncDisplayKit/_ASCollectionGalleryLayoutItem.h>
#endif

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASCollectionElement.h"
#else
#import <AsyncDisplayKit/ASCollectionElement.h>
#endif
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASLayout.h"
#else
#import <AsyncDisplayKit/ASLayout.h>
#endif
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASLayoutElementStylePrivate.h"
#else
#import <AsyncDisplayKit/ASLayoutElementStylePrivate.h>
#endif
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASLayoutSpec.h"
#else
#import <AsyncDisplayKit/ASLayoutSpec.h>
#endif

@interface _ASGalleryLayoutItem ()
@property ASPrimitiveTraitCollection primitiveTraitCollection;

@end

@implementation _ASGalleryLayoutItem

@synthesize style;

- (instancetype)initWithItemSize:(CGSize)itemSize collectionElement:(ASCollectionElement *)collectionElement
{
  self = [super init];
  if (self) {
    ASDisplayNodeAssert(! CGSizeEqualToSize(CGSizeZero, itemSize), @"Item size should not be zero");
    ASDisplayNodeAssertNotNil(collectionElement, @"Collection element should not be nil");
    _itemSize = itemSize;
    _collectionElement = collectionElement;
  }
  return self;
}

ASLayoutElementStyleExtensibilityForwarding

- (ASTraitCollection *)asyncTraitCollection
{
  ASDisplayNodeAssertNotSupported();
  return nil;
}

- (ASLayoutElementType)layoutElementType
{
  return ASLayoutElementTypeLayoutSpec;
}

- (NSArray<id<ASLayoutElement>> *)sublayoutElements
{
  ASDisplayNodeAssertNotSupported();
  return nil;
}

- (BOOL)implementsLayoutMethod
{
  return YES;
}

ASLayoutElementLayoutCalculationDefaults

- (ASLayout *)calculateLayoutThatFits:(ASSizeRange)constrainedSize
{
  ASDisplayNodeAssert(CGSizeEqualToSize(_itemSize, ASSizeRangeClamp(constrainedSize, _itemSize)),
                      @"Item size %@ can't fit within the bounds of constrained size %@", NSStringFromCGSize(_itemSize), NSStringFromASSizeRange(constrainedSize));
  return [ASLayout layoutWithLayoutElement:self size:_itemSize];
}

#pragma mark - ASLayoutElementAsciiArtProtocol

- (NSString *)asciiArtString
{
  return [ASLayoutSpec asciiArtStringForChildren:@[] parentName:[self asciiArtName]];
}

- (NSString *)asciiArtName
{
  return [NSMutableString stringWithCString:object_getClassName(self) encoding:NSASCIIStringEncoding];
}

@end
