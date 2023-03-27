//
//  ASCollectionLayoutDefines.h
//  Texture
//
//  Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#import <UIKit/UIKit.h>

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASBaseDefines.h"
#else
#import <AsyncDisplayKit/ASBaseDefines.h>
#endif
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASDimension.h"
#else
#import <AsyncDisplayKit/ASDimension.h>
#endif
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASScrollDirection.h"
#else
#import <AsyncDisplayKit/ASScrollDirection.h>
#endif

NS_ASSUME_NONNULL_BEGIN

ASDK_EXTERN ASSizeRange ASSizeRangeForCollectionLayoutThatFitsViewportSize(CGSize viewportSize, ASScrollDirection scrollableDirections) AS_WARN_UNUSED_RESULT;

NS_ASSUME_NONNULL_END
