// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTMXMAPINFO_H
#define CCTMXMAPINFO_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSXMLParserDelegate;

@interface CCTMXMapInfo : NSObject <NSXMLParserDelegate>

 {
    NSMutableString *_currentString;
    BOOL _storingCharacters;
    int _layerAttribs;
    int _parentElement;
    unsigned int _parentGID;
    unsigned int _currentFirstGID;
}


@property (nonatomic) int orientation; // ivar: _orientation
@property (nonatomic) CGSize mapSize; // ivar: _mapSize
@property (nonatomic) CGSize tileSize; // ivar: _tileSize
@property (retain, nonatomic) NSMutableArray *layers; // ivar: _layers
@property (retain, nonatomic) NSMutableArray *tilesets; // ivar: _tilesets
@property (retain, nonatomic) NSString *filename; // ivar: _filename
@property (retain, nonatomic) NSString *resources; // ivar: _resources
@property (retain, nonatomic) NSMutableArray *objectGroups; // ivar: _objectGroups
@property (retain, nonatomic) NSMutableDictionary *properties; // ivar: _properties
@property (retain, nonatomic) NSMutableDictionary *tileProperties; // ivar: _tileProperties
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)internalInit:(id)arg0 resourcePath:(id)arg1 ;
-(id)initWithXML:(id)arg0 resourcePath:(id)arg1 ;
-(id)initWithTMXFile:(id)arg0 ;
-(void)dealloc;
-(void)parseXMLData:(id)arg0 ;
-(void)parseXMLString:(id)arg0 ;
-(void)parseXMLFile:(id)arg0 ;
-(void)parser:(id)arg0 didStartElement:(id)arg1 namespaceURI:(id)arg2 qualifiedName:(id)arg3 attributes:(id)arg4 ;
-(void)parser:(id)arg0 didEndElement:(id)arg1 namespaceURI:(id)arg2 qualifiedName:(id)arg3 ;
-(void)parser:(id)arg0 foundCharacters:(id)arg1 ;
-(void)parser:(id)arg0 parseErrorOccurred:(id)arg1 ;
+(id)formatWithTMXFile:(id)arg0 ;
+(id)formatWithXML:(id)arg0 resourcePath:(id)arg1 ;


@end


#endif