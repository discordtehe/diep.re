// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTILEMAPATLAS_H
#define CCTILEMAPATLAS_H


#import <CoreFoundation/CoreFoundation.h>

@class CCAtlasNode;

@interface CCTileMapAtlas : CCAtlasNode {
    NSMutableDictionary *_posToAtlasIndex;
    int _itemsToRender;
}


@property (readonly, nonatomic) *sImageTGA tgaInfo; // ivar: _tgaInfo


-(id)initWithTileFile:(id)arg0 mapFile:(id)arg1 tileWidth:(int)arg2 tileHeight:(int)arg3 ;
-(void)dealloc;
-(void)releaseMap;
-(void)calculateItemsToRender;
-(void)loadTGAfile:(id)arg0 ;
-(void)setTile:(struct _ccColorThreeB )arg0 at:(struct CGPoint )arg1 ;
-(struct _ccColorThreeB )tileAt:(struct CGPoint )arg0 ;
-(void)updateAtlasValueAt:(struct CGPoint )arg0 withValue:(struct _ccColorThreeB )arg1 withIndex:(NSUInteger)arg2 ;
-(void)updateAtlasValues;
+(id)tileMapAtlasWithTileFile:(id)arg0 mapFile:(id)arg1 tileWidth:(int)arg2 tileHeight:(int)arg3 ;


@end


#endif