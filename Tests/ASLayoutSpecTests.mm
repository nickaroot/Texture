//
//  ASLayoutSpecTests.mm
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#import <XCTest/XCTest.h>

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "AsyncDisplayKit.h"
#import "ASLayoutElementExtensibility.h"
#else
#import <AsyncDisplayKit/AsyncDisplayKit.h>
#import <AsyncDisplayKit/ASLayoutElementExtensibility.h>
#endif

#pragma mark - ASDKExtendedLayoutSpec

/*
 * Extend the ASDKExtendedLayoutElement
 * It adds a
 *  - primitive / CGFloat (extendedWidth)
 *  - struct / ASDimension (extendedDimension)
 *  - primitive / ASStackLayoutDirection (extendedDirection)
 */
@protocol ASDKExtendedLayoutElement <NSObject>
@property (nonatomic) CGFloat extendedWidth;
@property (nonatomic) ASDimension extendedDimension;
@property (copy, nonatomic) NSString *extendedName;
@end

/*
 * Let the ASLayoutElementStyle conform to the ASDKExtendedLayoutElement protocol and add properties implementation
 */
@interface ASLayoutElementStyle (ASDKExtendedLayoutElement) <ASDKExtendedLayoutElement>
@end

@implementation ASLayoutElementStyle (ASDKExtendedLayoutElement)
ASDK_STYLE_PROP_PRIM(CGFloat, extendedWidth, setExtendedWidth, 0);
ASDK_STYLE_PROP_STR(ASDimension, extendedDimension, setExtendedDimension, ASDimensionMake(ASDimensionUnitAuto, 0));
ASDK_STYLE_PROP_OBJ(NSString *, extendedName, setExtendedName);
@end

/*
 * As the ASLayoutElementStyle conforms to the ASDKExtendedLayoutElement protocol now, ASDKExtendedLayoutElement properties
 * can be accessed in ASDKExtendedLayoutSpec
 */
@interface ASDKExtendedLayoutSpec : ASLayoutSpec
@end

@implementation ASDKExtendedLayoutSpec

- (void)doSetSomeStyleValuesToChildren
{
  for (id<ASLayoutElement> child in self.children) {
    child.style.extendedWidth = 100;
    child.style.extendedDimension = ASDimensionMake(100);
    child.style.extendedName = @"ASDK";
  }
}

- (void)doUseSomeStyleValuesFromChildren
{
  for (id<ASLayoutElement> child in self.children) {
    __unused CGFloat extendedWidth = child.style.extendedWidth;
    __unused ASDimension extendedDimension = child.style.extendedDimension;
    __unused NSString *extendedName = child.style.extendedName;
  }
}

@end


#pragma mark - ASLayoutSpecTests

@interface ASLayoutSpecTests : XCTestCase

@end

@implementation ASLayoutSpecTests

- (void)testSetPrimitiveToExtendedStyle
{
  ASDisplayNode *node = [[ASDisplayNode alloc] init];
  node.style.extendedWidth = 100;
  XCTAssert(node.style.extendedWidth == 100, @"Primitive value should be set on extended style");
}

- (void)testSetStructToExtendedStyle
{
  ASDisplayNode *node = [[ASDisplayNode alloc] init];
  node.style.extendedDimension = ASDimensionMake(100);
  XCTAssertTrue(ASDimensionEqualToDimension(node.style.extendedDimension, ASDimensionMake(100)), @"Struct should be set on extended style");
}

- (void)testSetObjectToExtendedStyle
{
  NSString *extendedName = @"ASDK";
  
  ASDisplayNode *node = [[ASDisplayNode alloc] init];
  node.style.extendedName = extendedName;
  XCTAssertEqualObjects(node.style.extendedName, extendedName, @"Object should be set on extended style");
}


- (void)testUseOfExtendedStyleProperties
{
  ASDKExtendedLayoutSpec *extendedLayoutSpec = [ASDKExtendedLayoutSpec new];
  extendedLayoutSpec.children = @[[[ASDisplayNode alloc] init], [[ASDisplayNode alloc] init]];
  XCTAssertNoThrow([extendedLayoutSpec doSetSomeStyleValuesToChildren]);
  XCTAssertNoThrow([extendedLayoutSpec doUseSomeStyleValuesFromChildren]);
}

@end
