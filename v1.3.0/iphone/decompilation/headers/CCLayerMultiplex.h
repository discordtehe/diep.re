// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCLAYERMULTIPLEX_H
#define CCLAYERMULTIPLEX_H


#import <CoreFoundation/CoreFoundation.h>

@class CCLayer;

@interface CCLayerMultiplex : CCLayer {
    unsigned int _enabledLayer;
    NSMutableArray *_layers;
}




-(id)initWithArray:(id)arg0 ;
-(id)initWithLayers:(id)arg0 vaList:(char *)arg1 ;
-(void)dealloc;
-(void)switchTo:(unsigned int)arg0 ;
-(void)switchToAndReleaseMe:(unsigned int)arg0 ;
+(id)layerWithArray:(id)arg0 ;
+(id)layerWithLayers:(id)arg0 ;


@end


#endif