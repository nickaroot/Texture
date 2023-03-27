//
//  ASTableNode+Beta.h
//  Texture
//
//  Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASTableNode.h"
#else
#import <AsyncDisplayKit/ASTableNode.h>
#endif

@protocol ASBatchFetchingDelegate;

NS_ASSUME_NONNULL_BEGIN

@interface ASTableNode (Beta)

@property (nonatomic, weak) id<ASBatchFetchingDelegate> batchFetchingDelegate;

@end

NS_ASSUME_NONNULL_END
