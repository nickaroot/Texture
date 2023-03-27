//
//  ASResponderChainEnumerator.mm
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASResponderChainEnumerator.h"
#else
#import <AsyncDisplayKit/ASResponderChainEnumerator.h>
#endif
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASAssert.h"
#else
#import <AsyncDisplayKit/ASAssert.h>
#endif

@implementation ASResponderChainEnumerator {
  UIResponder *_currentResponder;
}

- (instancetype)initWithResponder:(UIResponder *)responder
{
  ASDisplayNodeAssertMainThread();
  if (self = [super init]) {
    _currentResponder = responder;
  }
  return self;
}

#pragma mark - NSEnumerator

- (id)nextObject
{
  ASDisplayNodeAssertMainThread();
  id result = [_currentResponder nextResponder];
  _currentResponder = result;
  return result;
}

@end

@implementation UIResponder (ASResponderChainEnumerator)

- (NSEnumerator *)asdk_responderChainEnumerator
{
  return [[ASResponderChainEnumerator alloc] initWithResponder:self];
}

@end
