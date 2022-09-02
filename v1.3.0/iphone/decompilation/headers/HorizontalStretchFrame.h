// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef HORIZONTALSTRETCHFRAME_H
#define HORIZONTALSTRETCHFRAME_H


#import <Foundation/Foundation.h>

@class CCSprite;

@interface HorizontalStretchFrame : CCSprite

@property (retain, nonatomic) NSString *imgPrefix; // ivar: _imgPrefix
@property (retain, nonatomic) NSString *frameDescription; // ivar: _frameDescription


-(id)prefix;
-(void)positionSprites;
-(void)createSprite_MCC2Ds;
-(id)initWithPrefix:(id)arg0 ;
-(void)dealloc;
-(void)setupPosition:(struct CGPoint )arg0 anchorPoint:(struct CGPoint )arg1 parent:(id)arg2 size:(struct CGSize )arg3 ;
-(void)setupPosition:(struct CGPoint )arg0 anchorPoint:(struct CGPoint )arg1 parent:(id)arg2 size:(struct CGSize )arg3 z:(NSInteger)arg4 ;
-(void)changeSize:(struct CGSize )arg0 ;
-(void)setupFromHorizontalStretchFrame:(id)arg0 ;
-(void)setColor:(struct _ccColorThreeB )arg0 ;
-(void)setOpacity:(unsigned char)arg0 ;
-(id)leftSprite;
-(id)rightSprite;
-(id)centerSprite;
-(void)removeSprites;
-(void)didLoadFromCCB;
+(id)splitFrame:(id)arg0 leftX:(float)arg1 rightX:(float)arg2 ;
+(id)splitFrame:(id)arg0 frameName:(id)arg1 leftX:(float)arg2 rightX:(float)arg3 ;
+(id)horizontalStretchFrameWithFrameDescription:(id)arg0 ;
+(id)horizontalStretchFrame;
+(id)horizontalStretchFrameWithPrefix:(id)arg0 ;


@end


#endif