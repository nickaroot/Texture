//
//  ASIGListAdapterBasedDataSource.h
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASAvailability.h"
#else
#import <AsyncDisplayKit/ASAvailability.h>
#endif

#if AS_IG_LIST_KIT

#import <IGListKit/IGListKit.h>
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASCollectionView.h"
#else
#import <AsyncDisplayKit/ASCollectionView.h>
#endif
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASCollectionNode.h"
#else
#import <AsyncDisplayKit/ASCollectionNode.h>
#endif

NS_ASSUME_NONNULL_BEGIN

AS_SUBCLASSING_RESTRICTED
@interface ASIGListAdapterBasedDataSource : NSObject <ASCollectionDataSourceInterop, ASCollectionDelegateInterop, ASCollectionDelegateFlowLayout>

- (instancetype)initWithListAdapter:(IGListAdapter *)listAdapter collectionDelegate:(nullable id<ASCollectionDelegate>)collectionDelegate;

@end

#endif

NS_ASSUME_NONNULL_END
