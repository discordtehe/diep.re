// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTMXTILEDMAP_H
#define CCTMXTILEDMAP_H


#import <CoreFoundation/CoreFoundation.h>

@class CCNode;

@interface CCTMXTiledMap : CCNode {
    NSMutableDictionary *_tileProperties;
}


@property (readonly, nonatomic) CGSize mapSize; // ivar: _mapSize
@property (readonly, nonatomic) CGSize tileSize; // ivar: _tileSize
@property (readonly, nonatomic) int mapOrientation; // ivar: _mapOrientation
@property (retain, nonatomic) NSMutableArray *objectGroups; // ivar: _objectGroups
@property (retain, nonatomic) NSMutableDictionary *properties; // ivar: _properties


-(void)buildWithMapInfo:(id)arg0 ;
-(id)initWithXML:(id)arg0 resourcePath:(id)arg1 ;
-(id)initWithTMXFile:(id)arg0 ;
-(void)dealloc;
-(id)parseLayer:(id)arg0 map:(id)arg1 ;
-(id)tilesetForLayer:(id)arg0 map:(id)arg1 ;
-(id)layerNamed:(id)arg0 ;
-(id)objectGroupNamed:(id)arg0 ;
-(id)propertyNamed:(id)arg0 ;
-(id)propertiesForGID:(unsigned int)arg0 ;
+(id)tiledMapWithTMXFile:(id)arg0 ;
+(id)tiledMapWithXML:(id)arg0 resourcePath:(id)arg1 ;


@end


#endif