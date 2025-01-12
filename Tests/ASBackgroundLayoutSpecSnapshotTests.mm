//
//  ASBackgroundLayoutSpecSnapshotTests.mm
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#import "ASLayoutSpecSnapshotTestsHelper.h"

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASBackgroundLayoutSpec.h"
#import "ASCenterLayoutSpec.h"
#else
#import <AsyncDisplayKit/ASBackgroundLayoutSpec.h>
#import <AsyncDisplayKit/ASCenterLayoutSpec.h>
#endif

static const ASSizeRange kSize = {{320, 320}, {320, 320}};

@interface ASBackgroundLayoutSpecSnapshotTests : ASLayoutSpecSnapshotTestCase

@end

@implementation ASBackgroundLayoutSpecSnapshotTests

- (void)testBackground
{
  ASDisplayNode *backgroundNode = ASDisplayNodeWithBackgroundColor([UIColor blueColor]);
  ASDisplayNode *foregroundNode = ASDisplayNodeWithBackgroundColor([UIColor blackColor], {20, 20});
  
  ASLayoutSpec *layoutSpec =
  [ASBackgroundLayoutSpec
   backgroundLayoutSpecWithChild:
   [ASCenterLayoutSpec
    centerLayoutSpecWithCenteringOptions:ASCenterLayoutSpecCenteringXY
    sizingOptions:{}
    child:foregroundNode]
   background:backgroundNode];
  
  [self testLayoutSpec:layoutSpec sizeRange:kSize subnodes:@[backgroundNode, foregroundNode] identifier: nil];
}

@end
