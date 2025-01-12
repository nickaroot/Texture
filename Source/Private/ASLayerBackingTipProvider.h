//
//  ASLayerBackingTipProvider.h
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#import "ASTipProvider.h"

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASBaseDefines.h"
#else
#import <AsyncDisplayKit/ASBaseDefines.h>
#endif

#if AS_ENABLE_TIPS

NS_ASSUME_NONNULL_BEGIN

AS_SUBCLASSING_RESTRICTED
@interface ASLayerBackingTipProvider : ASTipProvider

@end

NS_ASSUME_NONNULL_END

#endif // AS_ENABLE_TIPS
