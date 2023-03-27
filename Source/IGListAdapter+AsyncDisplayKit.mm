//
//  IGListAdapter+AsyncDisplayKit.mm
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

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "IGListAdapter+AsyncDisplayKit.h"
#import "ASIGListAdapterBasedDataSource.h"
#else
#import <AsyncDisplayKit/IGListAdapter+AsyncDisplayKit.h>
#import <AsyncDisplayKit/ASIGListAdapterBasedDataSource.h>
#endif

@implementation IGListAdapter (AsyncDisplayKit)

- (void)setASDKCollectionNode:(ASCollectionNode *)collectionNode
{
  ASDisplayNodeAssertMainThread();

  // Attempt to retrieve previous data source.
  ASIGListAdapterBasedDataSource *dataSource = objc_getAssociatedObject(self, _cmd);
  // Bomb if we already made one.
  if (dataSource != nil) {
    ASDisplayNodeFailAssert(@"Attempt to call %@ multiple times on the same list adapter. Not currently allowed!", NSStringFromSelector(_cmd));
    return;
  }

  // Make a data source and retain it.
  dataSource = [[ASIGListAdapterBasedDataSource alloc] initWithListAdapter:self collectionDelegate:collectionNode.delegate];
  objc_setAssociatedObject(self, _cmd, dataSource, OBJC_ASSOCIATION_RETAIN_NONATOMIC);

  // Attach the data source to the collection node.
  collectionNode.dataSource = dataSource;
  collectionNode.delegate = dataSource;
  __weak IGListAdapter *weakSelf = self;
  [collectionNode onDidLoad:^(__kindof ASCollectionNode * _Nonnull collectionNode) {
#if IG_LIST_COLLECTION_VIEW
    // We manually set the superclass of ASCollectionView to IGListCollectionView at runtime if needed.
    weakSelf.collectionView = (IGListCollectionView *)collectionNode.view;
#else
    weakSelf.collectionView = collectionNode.view;
#endif
  }];
}

@end

#endif // AS_IG_LIST_KIT
