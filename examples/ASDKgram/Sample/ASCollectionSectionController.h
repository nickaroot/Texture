//
//  ASCollectionSectionController.h
//  Texture
//
//  Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#if !__has_include(<IGListKit/IGListKit.h>)
#import "IGListKit.h"
#else
#import <IGListKit/IGListKit.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@interface ASCollectionSectionController : IGListSectionController

/**
 * The items managed by this section controller.
 */
@property (nonatomic, strong, readonly) NSArray<id<IGListDiffable>> *items;

- (void)setItems:(NSArray<id<IGListDiffable>> *)newItems
        animated:(BOOL)animated
      completion:(nullable void(^)())completion;

- (NSInteger)numberOfItems;

@end

NS_ASSUME_NONNULL_END
