// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTMXLAYERINFO_H
#define CCTMXLAYERINFO_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CCTMXLayerInfo : NSObject

@property (retain, nonatomic) NSString *name; // ivar: _name
@property (nonatomic) CGSize layerSize; // ivar: _layerSize
@property (nonatomic) *unsigned int tiles; // ivar: _tiles
@property (nonatomic) BOOL visible; // ivar: _visible
@property (nonatomic) unsigned char opacity; // ivar: _opacity
@property (nonatomic) BOOL ownTiles; // ivar: _ownTiles
@property (nonatomic) unsigned int minGID; // ivar: _minGID
@property (nonatomic) unsigned int maxGID; // ivar: _maxGID
@property (retain, nonatomic) NSMutableDictionary *properties; // ivar: _properties
@property (nonatomic) CGPoint offset; // ivar: _offset


-(id)init;
-(void)dealloc;


@end


#endif