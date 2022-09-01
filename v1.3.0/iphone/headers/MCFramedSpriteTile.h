// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCFRAMEDSPRITETILE_H
#define MCFRAMEDSPRITETILE_H



@class CCSprite;

@interface MCFramedSpriteTile : CCSprite {
    CGSize _scales;
    int _startIndex;
    CGPoint _internalTilePosition;
    CGPoint _internalLoopIndexes;
}


@property (nonatomic) CGSize repetitionSize; // ivar: _repetition
@property (readonly, nonatomic) CGSize realRepetitionSize; // ivar: _realReps
@property (nonatomic) BOOL useHorizontalTiling; // ivar: _useHorizontalTiling
@property (nonatomic) BOOL useVerticalTiling; // ivar: _useVerticalTiling


-(id)init;
-(int)copyColorToQuad:(id)arg0 atIndex:(int)arg1 fromStart:(BOOL)arg2 ;
-(int)populateAtlas:(id)arg0 atIndex:(int)arg1 fromStart:(BOOL)arg2 ;


@end


#endif