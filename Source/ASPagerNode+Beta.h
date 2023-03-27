//
//  ASPagerNode+Beta.h
//  Texture
//
//  Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASPagerNode.h"
#else
#import <AsyncDisplayKit/ASPagerNode.h>
#endif

@interface ASPagerNode (Beta)

- (instancetype)initUsingAsyncCollectionLayout;

@end
