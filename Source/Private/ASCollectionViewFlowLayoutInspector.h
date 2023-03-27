//
//  ASCollectionViewFlowLayoutInspector.h
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASCollectionViewLayoutInspector.h"
#else
#import <AsyncDisplayKit/ASCollectionViewLayoutInspector.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@class ASCollectionView;
@class UICollectionViewFlowLayout;

/**
 * A layout inspector implementation specific for the sizing behavior of UICollectionViewFlowLayouts
 */
AS_SUBCLASSING_RESTRICTED
@interface ASCollectionViewFlowLayoutInspector : NSObject <ASCollectionViewLayoutInspecting>

@property (nonatomic, weak, readonly) UICollectionViewFlowLayout *layout;

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithFlowLayout:(UICollectionViewFlowLayout *)flowLayout NS_DESIGNATED_INITIALIZER;

@end

NS_ASSUME_NONNULL_END
