//
//  ASListKitTestAdapterDataSource.h
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#if !__has_include(<IGListKit/IGListKit.h>)
#import "IGListKit.h"
#else
#import <IGListKit/IGListKit.h>
#endif

@interface ASListKitTestAdapterDataSource : NSObject <IGListAdapterDataSource>

// array of numbers which is then passed to -[IGListTestSection setItems:]
@property (nonatomic, strong) NSArray <NSNumber *> *objects;

@end
