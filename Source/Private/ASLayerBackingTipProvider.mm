//
//  ASLayerBackingTipProvider.mm
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#import "ASLayerBackingTipProvider.h"

#if AS_ENABLE_TIPS

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASCellNode.h"
#else
#import <AsyncDisplayKit/ASCellNode.h>
#endif
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASControlNode.h"
#else
#import <AsyncDisplayKit/ASControlNode.h>
#endif
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASDisplayNode.h"
#else
#import <AsyncDisplayKit/ASDisplayNode.h>
#endif
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASDisplayNodeExtras.h"
#else
#import <AsyncDisplayKit/ASDisplayNodeExtras.h>
#endif
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASTip.h"
#else
#import <AsyncDisplayKit/ASTip.h>
#endif

@implementation ASLayerBackingTipProvider

- (ASTip *)tipForNode:(ASDisplayNode *)node
{
  // Already layer-backed.
  if (node.layerBacked) {
    return nil;
  }

  // TODO: Avoid revisiting nodes we already visited
  ASDisplayNode *failNode = ASDisplayNodeFindFirstNode(node, ^BOOL(ASDisplayNode * _Nonnull node) {
    return !node.supportsLayerBacking;
  });
  if (failNode != nil) {
    return nil;
  }

  ASTip *result = [[ASTip alloc] initWithNode:node
                                         kind:ASTipKindEnableLayerBacking
                                       format:@"Enable layer backing to improve performance"];
  return result;
}

@end

#endif // AS_ENABLE_TIPS
