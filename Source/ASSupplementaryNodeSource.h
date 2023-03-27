//
//  ASSupplementaryNodeSource.h
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#import <Foundation/Foundation.h>
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASBlockTypes.h"
#else
#import <AsyncDisplayKit/ASBlockTypes.h>
#endif
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASDimension.h"
#else
#import <AsyncDisplayKit/ASDimension.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@protocol ASSupplementaryNodeSource <NSObject>

@optional

/**
 * A method to provide the node-block for the supplementary element.
 *
 * @param elementKind The kind of supplementary element.
 * @param index The index of the item.
 * @return A node block for the supplementary element.
 * @see collectionNode:nodeForSupplementaryElementOfKind:atIndexPath:
 */
- (ASCellNodeBlock)nodeBlockForSupplementaryElementOfKind:(NSString *)elementKind atIndex:(NSInteger)index;

/**
 * Asks the controller to provide a node to display for the given supplementary element.
 *
 * @param kind The kind of supplementary element.
 * @param index The index of the item.
 */
- (ASCellNode *)nodeForSupplementaryElementOfKind:(NSString *)kind atIndex:(NSInteger)index;

/**
 * A method to provide the size range used for measuring the supplementary
 * element of the given kind at the given index.
 *
 * @param elementKind The kind of supplementary element.
 * @param index The index of the item.
 * @return A size range used for asynchronously measuring the node.
 * @see collectionNode:constrainedSizeForSupplementaryElementOfKind:atIndexPath:
 */
- (ASSizeRange)sizeRangeForSupplementaryElementOfKind:(NSString *)elementKind atIndex:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
