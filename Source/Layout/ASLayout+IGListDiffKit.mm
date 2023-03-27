//
//  ASLayout+IGListDiffKit.mm
//  Texture
//
//  Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASAvailability.h"
#else
#import <AsyncDisplayKit/ASAvailability.h>
#endif
#if AS_IG_LIST_DIFF_KIT
#import "ASLayout+IGListDiffKit.h"

@interface ASLayout() {
@public
  id<ASLayoutElement> _layoutElement;
}
@end

@implementation ASLayout(IGListDiffKit)

- (id <NSObject>)diffIdentifier
{
  return self->_layoutElement;
}

- (BOOL)isEqualToDiffableObject:(id <IGListDiffable>)other
{
  return [self isEqual:other];
}
@end
#endif // AS_IG_LIST_DIFF_KIT
