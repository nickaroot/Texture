//
//  ASControlNode+Private.h
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASControlNode.h"
#else
#import <AsyncDisplayKit/ASControlNode.h>
#endif

@interface ASControlNode (Private)

#if TARGET_OS_TV
- (void)_pressDown;
#endif

@end
