// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTMXOBJECTGROUP_H
#define CCTMXOBJECTGROUP_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CCTMXObjectGroup : NSObject

@property (retain, nonatomic) NSString *groupName; // ivar: _groupName
@property (nonatomic) CGPoint positionOffset; // ivar: _positionOffset
@property (retain, nonatomic) NSMutableArray *objects; // ivar: _objects
@property (retain, nonatomic) NSMutableDictionary *properties; // ivar: _properties


-(id)init;
-(void)dealloc;
-(id)objectNamed:(id)arg0 ;
-(id)propertyNamed:(id)arg0 ;


@end


#endif