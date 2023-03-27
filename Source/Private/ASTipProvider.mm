//
//  ASTipProvider.mm
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASTipProvider.h"
#else
#import <AsyncDisplayKit/ASTipProvider.h>
#endif

#if AS_ENABLE_TIPS

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASAssert.h"
#else
#import <AsyncDisplayKit/ASAssert.h>
#endif

// Concrete classes
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASLayerBackingTipProvider.h"
#else
#import <AsyncDisplayKit/ASLayerBackingTipProvider.h>
#endif

@implementation ASTipProvider

- (ASTip *)tipForNode:(ASDisplayNode *)node
{
  ASDisplayNodeFailAssert(@"Subclasses must override %@", NSStringFromSelector(_cmd));
  return nil;
}

@end

@implementation ASTipProvider (Lookup)

+ (NSArray<ASTipProvider *> *)all
{
  static NSArray<ASTipProvider *> *providers;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    providers = @[ [ASLayerBackingTipProvider new] ];
  });
  return providers;
}

@end

#endif // AS_ENABLE_TIPS
