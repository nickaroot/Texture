//
//  AsyncDisplayKit.h
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASAvailability.h"
#import "ASBaseDefines.h"
#import "ASDisplayNode.h"
#import "ASDisplayNode+Ancestry.h"
#import "ASDisplayNode+Convenience.h"
#import "ASDisplayNodeExtras.h"
#import "ASConfiguration.h"
#import "ASConfigurationDelegate.h"
#import "ASConfigurationInternal.h"

#import "ASControlNode.h"
#import "ASImageNode.h"
#import "ASTextNode.h"
#import "ASTextNode2.h"
#import "ASEditableTextNode.h"
#import "ASButtonNode.h"
#import "ASMapNode.h"
#else
#import <AsyncDisplayKit/ASAvailability.h>
#import <AsyncDisplayKit/ASBaseDefines.h>
#import <AsyncDisplayKit/ASDisplayNode.h>
#import <AsyncDisplayKit/ASDisplayNode+Ancestry.h>
#import <AsyncDisplayKit/ASDisplayNode+Convenience.h>
#import <AsyncDisplayKit/ASDisplayNodeExtras.h>
#import <AsyncDisplayKit/ASConfiguration.h>
#import <AsyncDisplayKit/ASConfigurationDelegate.h>
#import <AsyncDisplayKit/ASConfigurationInternal.h>

#import <AsyncDisplayKit/ASControlNode.h>
#import <AsyncDisplayKit/ASImageNode.h>
#import <AsyncDisplayKit/ASTextNode.h>
#import <AsyncDisplayKit/ASTextNode2.h>
#import <AsyncDisplayKit/ASEditableTextNode.h>
#import <AsyncDisplayKit/ASButtonNode.h>
#import <AsyncDisplayKit/ASMapNode.h>
#endif

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASVideoNode.h"
#import "ASVideoPlayerNode.h"

#import "ASImageProtocols.h"
#import "ASBasicImageDownloader.h"
#import "ASPINRemoteImageDownloader.h"
#import "ASMultiplexImageNode.h"
#import "ASNetworkImageLoadInfo.h"
#import "ASNetworkImageNode.h"
#import "ASPhotosFrameworkImageRequest.h"
#else
#import <AsyncDisplayKit/ASVideoNode.h>
#import <AsyncDisplayKit/ASVideoPlayerNode.h>

#import <AsyncDisplayKit/ASImageProtocols.h>
#import <AsyncDisplayKit/ASBasicImageDownloader.h>
#import <AsyncDisplayKit/ASPINRemoteImageDownloader.h>
#import <AsyncDisplayKit/ASMultiplexImageNode.h>
#import <AsyncDisplayKit/ASNetworkImageLoadInfo.h>
#import <AsyncDisplayKit/ASNetworkImageNode.h>
#import <AsyncDisplayKit/ASPhotosFrameworkImageRequest.h>
#endif

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASTableView.h"
#import "ASTableNode.h"
#import "ASCollectionView.h"
#import "ASCollectionNode.h"
#import "ASCollectionNode+Beta.h"
#import "ASCollectionViewLayoutInspector.h"
#import "ASCollectionViewLayoutFacilitatorProtocol.h"
#import "ASCellNode.h"
#import "ASRangeManagingNode.h"
#import "ASSectionContext.h"

#import "ASElementMap.h"
#import "ASCollectionElement.h"
#import "ASCollectionLayoutContext.h"
#import "ASCollectionLayoutState.h"
#import "ASCollectionFlowLayoutDelegate.h"
#import "ASCollectionGalleryLayoutDelegate.h"
#else
#import <AsyncDisplayKit/ASTableView.h>
#import <AsyncDisplayKit/ASTableNode.h>
#import <AsyncDisplayKit/ASCollectionView.h>
#import <AsyncDisplayKit/ASCollectionNode.h>
#import <AsyncDisplayKit/ASCollectionNode+Beta.h>
#import <AsyncDisplayKit/ASCollectionViewLayoutInspector.h>
#import <AsyncDisplayKit/ASCollectionViewLayoutFacilitatorProtocol.h>
#import <AsyncDisplayKit/ASCellNode.h>
#import <AsyncDisplayKit/ASRangeManagingNode.h>
#import <AsyncDisplayKit/ASSectionContext.h>

#import <AsyncDisplayKit/ASElementMap.h>
#import <AsyncDisplayKit/ASCollectionElement.h>
#import <AsyncDisplayKit/ASCollectionLayoutContext.h>
#import <AsyncDisplayKit/ASCollectionLayoutState.h>
#import <AsyncDisplayKit/ASCollectionFlowLayoutDelegate.h>
#import <AsyncDisplayKit/ASCollectionGalleryLayoutDelegate.h>
#endif

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASSectionController.h"
#import "ASSupplementaryNodeSource.h"

#import "ASScrollNode.h"
#else
#import <AsyncDisplayKit/ASSectionController.h>
#import <AsyncDisplayKit/ASSupplementaryNodeSource.h>

#import <AsyncDisplayKit/ASScrollNode.h>
#endif

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASPagerFlowLayout.h"
#import "ASPagerNode.h"
#import "ASPagerNode+Beta.h"

#import "ASNodeController+Beta.h"
#import "ASDKViewController.h"
#import "ASDKNavigationController.h"
#import "ASTabBarController.h"
#import "ASRangeControllerUpdateRangeProtocol+Beta.h"
#else
#import <AsyncDisplayKit/ASPagerFlowLayout.h>
#import <AsyncDisplayKit/ASPagerNode.h>
#import <AsyncDisplayKit/ASPagerNode+Beta.h>

#import <AsyncDisplayKit/ASNodeController+Beta.h>
#import <AsyncDisplayKit/ASDKViewController.h>
#import <AsyncDisplayKit/ASDKNavigationController.h>
#import <AsyncDisplayKit/ASTabBarController.h>
#import <AsyncDisplayKit/ASRangeControllerUpdateRangeProtocol+Beta.h>
#endif

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASDataController.h"

#import "ASLayout.h"
#import "ASDimension.h"
#import "ASDimensionInternal.h"
#import "ASLayoutElement.h"
#import "ASLayoutSpec.h"
#import "ASBackgroundLayoutSpec.h"
#import "ASCenterLayoutSpec.h"
#import "ASCornerLayoutSpec.h"
#import "ASRelativeLayoutSpec.h"
#import "ASInsetLayoutSpec.h"
#import "ASOverlayLayoutSpec.h"
#import "ASRatioLayoutSpec.h"
#import "ASAbsoluteLayoutSpec.h"
#import "ASStackLayoutDefines.h"
#import "ASStackLayoutSpec.h"
#else
#import <AsyncDisplayKit/ASDataController.h>

#import <AsyncDisplayKit/ASLayout.h>
#import <AsyncDisplayKit/ASDimension.h>
#import <AsyncDisplayKit/ASDimensionInternal.h>
#import <AsyncDisplayKit/ASLayoutElement.h>
#import <AsyncDisplayKit/ASLayoutSpec.h>
#import <AsyncDisplayKit/ASBackgroundLayoutSpec.h>
#import <AsyncDisplayKit/ASCenterLayoutSpec.h>
#import <AsyncDisplayKit/ASCornerLayoutSpec.h>
#import <AsyncDisplayKit/ASRelativeLayoutSpec.h>
#import <AsyncDisplayKit/ASInsetLayoutSpec.h>
#import <AsyncDisplayKit/ASOverlayLayoutSpec.h>
#import <AsyncDisplayKit/ASRatioLayoutSpec.h>
#import <AsyncDisplayKit/ASAbsoluteLayoutSpec.h>
#import <AsyncDisplayKit/ASStackLayoutDefines.h>
#import <AsyncDisplayKit/ASStackLayoutSpec.h>
#endif

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "_ASAsyncTransaction.h"
#import "_ASAsyncTransactionGroup.h"
#import "_ASAsyncTransactionContainer.h"
#import "ASCollections.h"
#import "_ASDisplayLayer.h"
#import "_ASDisplayView.h"
#import "ASDisplayNode+Beta.h"
#import "ASTextNode+Beta.h"
#import "ASTextNodeTypes.h"
#import "ASBlockTypes.h"
#import "ASContextTransitioning.h"
#import "ASControlNode+Subclasses.h"
#import "ASDisplayNode+Subclasses.h"
#import "ASEqualityHelpers.h"
#import "ASHashing.h"
#import "ASHighlightOverlayLayer.h"
#import "ASImageContainerProtocolCategories.h"
#import "ASLocking.h"
#import "ASLog.h"
#import "ASMainThreadDeallocation.h"
#import "ASMutableAttributedStringBuilder.h"
#import "ASRunLoopQueue.h"
#import "ASTextKitComponents.h"
#import "ASTextLayout.h"
#import "ASThread.h"
#import "ASTraitCollection.h"
#import "ASVisibilityProtocols.h"
#import "ASWeakSet.h"

#import "CoreGraphics+ASConvenience.h"
#import "NSMutableAttributedString+TextKitAdditions.h"
#import "UICollectionViewLayout+ASConvenience.h"
#import "UIView+ASConvenience.h"
#import "UIImage+ASConvenience.h"
#import "NSArray+Diffing.h"
#import "ASObjectDescriptionHelpers.h"
#import "UIResponder+AsyncDisplayKit.h"
#else
#import <AsyncDisplayKit/_ASAsyncTransaction.h>
#import <AsyncDisplayKit/_ASAsyncTransactionGroup.h>
#import <AsyncDisplayKit/_ASAsyncTransactionContainer.h>
#import <AsyncDisplayKit/ASCollections.h>
#import <AsyncDisplayKit/_ASDisplayLayer.h>
#import <AsyncDisplayKit/_ASDisplayView.h>
#import <AsyncDisplayKit/ASDisplayNode+Beta.h>
#import <AsyncDisplayKit/ASTextNode+Beta.h>
#import <AsyncDisplayKit/ASTextNodeTypes.h>
#import <AsyncDisplayKit/ASBlockTypes.h>
#import <AsyncDisplayKit/ASContextTransitioning.h>
#import <AsyncDisplayKit/ASControlNode+Subclasses.h>
#import <AsyncDisplayKit/ASDisplayNode+Subclasses.h>
#import <AsyncDisplayKit/ASEqualityHelpers.h>
#import <AsyncDisplayKit/ASHashing.h>
#import <AsyncDisplayKit/ASHighlightOverlayLayer.h>
#import <AsyncDisplayKit/ASImageContainerProtocolCategories.h>
#import <AsyncDisplayKit/ASLocking.h>
#import <AsyncDisplayKit/ASLog.h>
#import <AsyncDisplayKit/ASMainThreadDeallocation.h>
#import <AsyncDisplayKit/ASMutableAttributedStringBuilder.h>
#import <AsyncDisplayKit/ASRunLoopQueue.h>
#import <AsyncDisplayKit/ASTextKitComponents.h>
#import <AsyncDisplayKit/ASTextLayout.h>
#import <AsyncDisplayKit/ASThread.h>
#import <AsyncDisplayKit/ASTraitCollection.h>
#import <AsyncDisplayKit/ASVisibilityProtocols.h>
#import <AsyncDisplayKit/ASWeakSet.h>

#import <AsyncDisplayKit/CoreGraphics+ASConvenience.h>
#import <AsyncDisplayKit/NSMutableAttributedString+TextKitAdditions.h>
#import <AsyncDisplayKit/UICollectionViewLayout+ASConvenience.h>
#import <AsyncDisplayKit/UIView+ASConvenience.h>
#import <AsyncDisplayKit/UIImage+ASConvenience.h>
#import <AsyncDisplayKit/NSArray+Diffing.h>
#import <AsyncDisplayKit/ASObjectDescriptionHelpers.h>
#import <AsyncDisplayKit/UIResponder+AsyncDisplayKit.h>
#endif

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "AsyncDisplayKit+Debug.h"
#import "AsyncDisplayKit+Tips.h"

#import "IGListAdapter+AsyncDisplayKit.h"
#import "AsyncDisplayKit+IGListKitMethods.h"
#import "ASLayout+IGListDiffKit.h"
#import "ASGraphicsContext.h"
#else
#import <AsyncDisplayKit/AsyncDisplayKit+Debug.h>
#import <AsyncDisplayKit/AsyncDisplayKit+Tips.h>

#import <AsyncDisplayKit/IGListAdapter+AsyncDisplayKit.h>
#import <AsyncDisplayKit/AsyncDisplayKit+IGListKitMethods.h>
#import <AsyncDisplayKit/ASLayout+IGListDiffKit.h>
#import <AsyncDisplayKit/ASGraphicsContext.h>
#endif
