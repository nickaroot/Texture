//
//  ASButtonNode+Private.h
//  Texture
//
//  Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASButtonNode.h"
#else
#import <AsyncDisplayKit/ASButtonNode.h>
#endif
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASTextNode.h"
#else
#import <AsyncDisplayKit/ASTextNode.h>
#endif
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASImageNode.h"
#else
#import <AsyncDisplayKit/ASImageNode.h>
#endif
#if !__has_include(<AsyncDisplayKit/AsyncDisplayKit.h>)
#import "ASStackLayoutDefines.h"
#else
#import <AsyncDisplayKit/ASStackLayoutDefines.h>
#endif

@interface ASButtonNode () {
  NSAttributedString *_normalAttributedTitle;
  NSAttributedString *_highlightedAttributedTitle;
  NSAttributedString *_selectedAttributedTitle;
  NSAttributedString *_selectedHighlightedAttributedTitle;
  NSAttributedString *_disabledAttributedTitle;

  UIImage *_normalImage;
  UIImage *_highlightedImage;
  UIImage *_selectedImage;
  UIImage *_selectedHighlightedImage;
  UIImage *_disabledImage;

  UIImage *_normalBackgroundImage;
  UIImage *_highlightedBackgroundImage;
  UIImage *_selectedBackgroundImage;
  UIImage *_selectedHighlightedBackgroundImage;
  UIImage *_disabledBackgroundImage;

  CGFloat _contentSpacing;
  UIEdgeInsets _contentEdgeInsets;
  ASTextNode *_titleNode;
  ASImageNode *_imageNode;
  ASImageNode *_backgroundImageNode;

  BOOL _laysOutHorizontally;
  ASVerticalAlignment _contentVerticalAlignment;
  ASHorizontalAlignment _contentHorizontalAlignment;
  ASButtonNodeImageAlignment _imageAlignment;
}

@end
