//
//  ASLayout+IGListDiffKit.h
//  Texture
//
//  Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#if AS_IG_LIST_DIFF_KIT
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASLayout.h"
#else
#import <AsyncDisplayKit/ASLayout.h>
#endif

#if !__has_include(<IGListDiffKit/IGListDiffKit.h>)
#import "IGListDiffKit.h"
#else
#import <IGListDiffKit/IGListDiffKit.h>
#endif

@interface ASLayout(IGListDiffKit) <IGListDiffable>
@end
#endif // AS_IG_LIST_DIFF_KIT
