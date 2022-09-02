// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCFSPROCESSEDVALUES_H
#define MCFSPROCESSEDVALUES_H


#import <Foundation/Foundation.h>

@class CCSpriteFrame;

@interface MCFSProcessedValues : NSObject

@property (nonatomic) float leftMargin; // ivar: _leftMargin
@property (nonatomic) float rightMargin; // ivar: _rightMargin
@property (nonatomic) float bottomMargin; // ivar: _bottomMargin
@property (nonatomic) float topMargin; // ivar: _topMargin
@property (retain, nonatomic) NSString *spriteSheet; // ivar: _spriteSheet
@property (retain, nonatomic) NSString *textureName; // ivar: _textureName
@property (retain, nonatomic) NSString *sourceFrame; // ivar: _sourceFrame
@property (retain, nonatomic) CCSpriteFrame *bottomLeft; // ivar: _bottomLeft
@property (retain, nonatomic) CCSpriteFrame *bottomMid; // ivar: _bottomMid
@property (retain, nonatomic) CCSpriteFrame *bottomRight; // ivar: _bottomRight
@property (retain, nonatomic) CCSpriteFrame *middleLeft; // ivar: _middleLeft
@property (retain, nonatomic) CCSpriteFrame *middleMid; // ivar: _middleMid
@property (retain, nonatomic) CCSpriteFrame *middleRight; // ivar: _middleRight
@property (retain, nonatomic) CCSpriteFrame *topLeft; // ivar: _topLeft
@property (retain, nonatomic) CCSpriteFrame *topMid; // ivar: _topMid
@property (retain, nonatomic) CCSpriteFrame *topRight; // ivar: _topRight


-(id)init;
-(void)dealloc;


@end


#endif