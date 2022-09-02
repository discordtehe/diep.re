// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVJSONSTORAGE_H
#define USRVJSONSTORAGE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface USRVJsonStorage : NSObject

@property (retain, nonatomic) NSMutableDictionary *storageContents; // ivar: _storageContents


-(BOOL)set:(id)arg0 value:(id)arg1 ;
-(id)getValueForKey:(id)arg0 ;
-(BOOL)deleteKey:(id)arg0 ;
-(id)getKeys:(id)arg0 recursive:(BOOL)arg1 ;
-(id)findObjectForKey:(id)arg0 ;
-(void)createObjectTree:(id)arg0 ;
-(id)getParentObjectTreeForTree:(id)arg0 ;
-(BOOL)hasData;
-(void)clearData;
-(BOOL)initData;


@end


#endif