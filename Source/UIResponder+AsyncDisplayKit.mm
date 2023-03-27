//
//  UIResponder+AsyncDisplayKit.m
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#import "UIResponder+AsyncDisplayKit.h"

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASAssert.h"
#import "ASResponderChainEnumerator.h"
#else
#import <AsyncDisplayKit/ASAssert.h>
#import <AsyncDisplayKit/ASResponderChainEnumerator.h>
#endif

@implementation UIResponder (AsyncDisplayKit)

- (__kindof UIViewController *)asdk_associatedViewController
{
  ASDisplayNodeAssertMainThread();
  
  for (UIResponder *responder in [self asdk_responderChainEnumerator]) {
    UIViewController *vc = ASDynamicCast(responder, UIViewController);
    if (vc) {
      return vc;
    }
  }
  return nil;
}

@end

