// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef LINE_H
#define LINE_H



@class CCNodeRGBA;

@interface Line : CCNodeRGBA {
    *CGPoint mShape;
    NSUInteger mNumPoints;
    *float mPointProgress;
}


@property (nonatomic) float progress; // ivar: mProgress
@property (nonatomic) float lineWidth; // ivar: mLineWidth
@property (nonatomic) float gradientRatio; // ivar: mGradientRatio


-(id)init;
-(id)initWithShape:(struct CGPoint *)arg0 numPoints:(NSUInteger)arg1 ;
-(void)dealloc;
-(void)setShape:(struct CGPoint *)arg0 numPoints:(NSUInteger)arg1 ;
-(void)draw;


@end


#endif