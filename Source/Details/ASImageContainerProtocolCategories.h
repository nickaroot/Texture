//
//  ASImageContainerProtocolCategories.h
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#import <UIKit/UIKit.h>

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASImageProtocols.h"
#else
#import <AsyncDisplayKit/ASImageProtocols.h>
#endif

@interface UIImage (ASImageContainerProtocol) <ASImageContainerProtocol>

@end

@interface NSData (ASImageContainerProtocol) <ASImageContainerProtocol>

@end
