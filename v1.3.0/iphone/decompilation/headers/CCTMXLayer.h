// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTMXLAYER_H
#define CCTMXLAYER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class CCSpriteBatchNode;
@class CCSprite;
@class CCTMXTilesetInfo;

@interface CCTMXLayer : CCSpriteBatchNode {
    unsigned char _opacity;
    NSUInteger _minGID;
    NSUInteger _maxGID;
    NSInteger _vertexZvalue;
    BOOL _useAutomaticVertexZ;
    CCSprite *_reusedTile;
    *ccArray _atlasIndexArray;
}


@property (retain, nonatomic) NSString *layerName; // ivar: _layerName
@property (nonatomic) CGSize layerSize; // ivar: _layerSize
@property (nonatomic) CGSize mapTileSize; // ivar: _mapTileSize
@property (nonatomic) *unsigned int tiles; // ivar: _tiles
@property (retain, nonatomic) CCTMXTilesetInfo *tileset; // ivar: _tileset
@property (nonatomic) NSUInteger layerOrientation; // ivar: _layerOrientation
@property (retain, nonatomic) NSMutableDictionary *properties; // ivar: _properties


-(id)initWithTilesetInfo:(id)arg0 layerInfo:(id)arg1 mapInfo:(id)arg2 ;
-(void)dealloc;
-(void)releaseMap;
-(id)reusedTileWithRect:(struct CGRect )arg0 ;
-(void)setupTiles;
-(id)propertyNamed:(id)arg0 ;
-(void)parseInternalProperties;
-(id)tileAt:(struct CGPoint )arg0 ;
-(unsigned int)tileGIDAt:(struct CGPoint )arg0 ;
-(unsigned int)tileGIDAt:(struct CGPoint )arg0 withFlags:(*int)arg1 ;
-(void)setupTileSprite:(id)arg0 position:(struct CGPoint )arg1 withGID:(unsigned int)arg2 ;
-(id)insertTileForGID:(unsigned int)arg0 at:(struct CGPoint )arg1 ;
-(id)updateTileForGID:(unsigned int)arg0 at:(struct CGPoint )arg1 ;
-(id)appendTileForGID:(unsigned int)arg0 at:(struct CGPoint )arg1 ;
-(NSUInteger)atlasIndexForExistantZ:(NSUInteger)arg0 ;
-(NSUInteger)atlasIndexForNewZ:(NSUInteger)arg0 ;
-(void)setTileGID:(unsigned int)arg0 at:(struct CGPoint )arg1 ;
-(void)setTileGID:(unsigned int)arg0 at:(struct CGPoint )arg1 withFlags:(int)arg2 ;
-(void)addChild:(id)arg0 z:(NSInteger)arg1 tag:(NSInteger)arg2 ;
-(void)removeChild:(id)arg0 cleanup:(BOOL)arg1 ;
-(void)removeTileAt:(struct CGPoint )arg0 ;
-(struct CGPoint )calculateLayerOffset:(struct CGPoint )arg0 ;
-(struct CGPoint )positionAt:(struct CGPoint )arg0 ;
-(struct CGPoint )positionForOrthoAt:(struct CGPoint )arg0 ;
-(struct CGPoint )positionForIsoAt:(struct CGPoint )arg0 ;
-(struct CGPoint )positionForHexAt:(struct CGPoint )arg0 ;
-(NSInteger)vertexZForPos:(struct CGPoint )arg0 ;
+(id)layerWithTilesetInfo:(id)arg0 layerInfo:(id)arg1 mapInfo:(id)arg2 ;


@end


#endif