// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTMXTILESETINFO_H
#define CCTMXTILESETINFO_H


#import <Foundation/Foundation.h>


@interface CCTMXTilesetInfo : NSObject

@property (retain, nonatomic) NSString *name; // ivar: _name
@property (nonatomic) unsigned int firstGid; // ivar: _firstGid
@property (nonatomic) CGSize tileSize; // ivar: _tileSize
@property (nonatomic) unsigned int spacing; // ivar: _spacing
@property (nonatomic) unsigned int margin; // ivar: _margin
@property (retain, nonatomic) NSString *sourceImage; // ivar: _sourceImage
@property (nonatomic) CGSize imageSize; // ivar: _imageSize
@property (nonatomic) CGPoint tileOffset; // ivar: _tileOffset
@property (readonly, nonatomic) CGPoint tileAnchorPoint; // ivar: _tileAnchorPoint


-(void)dealloc;
-(struct CGRect )rectForGID:(unsigned int)arg0 ;


@end


#endif