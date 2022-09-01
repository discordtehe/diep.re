// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISUSERDEFAULTKEYVALUESTORAGE_H
#define ISUSERDEFAULTKEYVALUESTORAGE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol ISKeyValueStorageProtocol;

@interface ISUserDefaultKeyValueStorage : NSObject <ISKeyValueStorageProtocol>

 {
    NSString *_identifier;
    NSString *_fullIdentifier;
    NSString *_prefix;
    NSUserDefaults *_defaults;
}




-(id)initWithIdentifier:(id)arg0 ;
-(void)load;
-(void)save;
-(id)objectForKey:(id)arg0 ;
-(void)setObject:(id)arg0 forKey:(id)arg1 ;
-(void)removeObjectForKey:(id)arg0 ;
-(id)getFullKey:(id)arg0 ;


@end


#endif