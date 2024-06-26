//
//  ASTableLayoutController.h
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#import <Foundation/Foundation.h>

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASAbstractLayoutController.h"
#else
#import <AsyncDisplayKit/ASAbstractLayoutController.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@class UITableView;

/**
 *  A layout controller designed for use with UITableView.
 */
AS_SUBCLASSING_RESTRICTED
@interface ASTableLayoutController : ASAbstractLayoutController

@property (nonatomic, weak, readonly) UITableView *tableView;

- (instancetype)initWithTableView:(UITableView *)tableView;

@end

NS_ASSUME_NONNULL_END
