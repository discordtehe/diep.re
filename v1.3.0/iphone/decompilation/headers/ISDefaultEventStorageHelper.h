// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISDEFAULTEVENTSTORAGEHELPER_H
#define ISDEFAULTEVENTSTORAGEHELPER_H


#import <Foundation/Foundation.h>

@protocol ISEventsStorageHelperProtocol;
@protocol ISKeyValueStorageProtocol;

@interface ISDefaultEventStorageHelper : NSObject <ISEventsStorageHelperProtocol>



@property (retain, nonatomic) NSObject<ISKeyValueStorageProtocol> *storage; // ivar: _storage
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithIdentifier:(id)arg0 ;
-(void)saveEvents:(id)arg0 forKey:(id)arg1 ;
-(id)loadEventsForKey:(id)arg0 ;
-(void)clearEventsStorageForKey:(id)arg0 ;
-(void)saveValue:(id)arg0 forKey:(id)arg1 ;
-(id)getValueForKey:(id)arg0 ;


@end


#endif