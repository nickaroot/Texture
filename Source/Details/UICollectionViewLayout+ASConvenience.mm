//
//  UICollectionViewLayout+ASConvenience.mm
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "UICollectionViewLayout+ASConvenience.h"
#else
#import <AsyncDisplayKit/UICollectionViewLayout+ASConvenience.h>
#endif

#import <UIKit/UICollectionViewFlowLayout.h>

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASCollectionViewFlowLayoutInspector.h"
#else
#import <AsyncDisplayKit/ASCollectionViewFlowLayoutInspector.h>
#endif

@implementation UICollectionViewLayout (ASLayoutInspectorProviding)

- (id<ASCollectionViewLayoutInspecting>)asdk_layoutInspector
{
  UICollectionViewFlowLayout *flow = ASDynamicCast(self, UICollectionViewFlowLayout);
  if (flow != nil) {
    return [[ASCollectionViewFlowLayoutInspector alloc] initWithFlowLayout:flow];
  } else {
    return [[ASCollectionViewLayoutInspector alloc] init];
  }
}

@end
