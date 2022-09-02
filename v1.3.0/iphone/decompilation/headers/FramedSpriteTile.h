// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FRAMEDSPRITETILE_H
#define FRAMEDSPRITETILE_H



@class CCSprite;
@class FramedSprite;

@interface FramedSpriteTile : CCSprite {
    CGSize _scales;
    FramedSprite *_framedSprite;
    int _startIndex;
}


@property (nonatomic) CGSize repetitionSize; // ivar: _repetition
@property (readonly, nonatomic) CGSize realRepetitionSize; // ivar: _realReps
@property (nonatomic) BOOL allowVerticalScale; // ivar: _allowVerticalScale
@property (nonatomic) BOOL allowHorizontalScale; // ivar: _allowHorizontalScale


-(id)initWithFramedSprite:(id)arg0 ;
-(id)init;
-(int)populateAtlas:(id)arg0 atIndex:(int)arg1 ;
-(void)setColor:(struct _ccColorThreeB )arg0 ;
-(void)setOpacity:(unsigned char)arg0 ;
-(void)updateDisplayedColor:(struct _ccColorThreeB )arg0 ;
-(void)updateDisplayedOpacity:(unsigned char)arg0 ;
-(id)description;


@end


#endif