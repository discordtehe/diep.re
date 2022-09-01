// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FIRCOMPONENTCONTAINER_H
#define FIRCOMPONENTCONTAINER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FIRApp;

@interface FIRComponentContainer : NSObject

@property (retain, nonatomic) NSMutableDictionary *components; // ivar: _components
@property (retain, nonatomic) NSMutableDictionary *cachedInstances; // ivar: _cachedInstances
@property (readonly, weak, nonatomic) FIRApp *app; // ivar: _app


-(id)initWithApp:(id)arg0 ;
-(id)initWithApp:(id)arg0 registrants:(id)arg1 ;
-(void)populateComponentsFromRegisteredClasses:(id)arg0 forApp:(id)arg1 ;
-(id)instantiateInstanceForProtocol:(id)arg0 withBlock:(id)arg1 ;
-(id)instanceForProtocol:(id)arg0 ;
-(void)removeAllCachedInstances;
+(void)registerAsComponentRegistrant:(Class)arg0 ;
+(void)registerAsComponentRegistrant:(Class)arg0 inSet:(id)arg1 ;


@end


#endif