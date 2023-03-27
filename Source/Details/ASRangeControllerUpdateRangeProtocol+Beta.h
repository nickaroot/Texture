//
//  ASRangeControllerUpdateRangeProtocol+Beta.h
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#import <Foundation/Foundation.h>
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASLayoutRangeType.h"
#else
#import <AsyncDisplayKit/ASLayoutRangeType.h>
#endif

@protocol ASRangeControllerUpdateRangeProtocol <NSObject>

/**
 * Updates the current range mode of the range controller for at least the next range update
 * and, if the new mode is different from the previous mode, enqueues a range update.
 */
- (void)updateCurrentRangeWithMode:(ASLayoutRangeMode)rangeMode;

@end
