// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCCONFIGURATIONDATA_H
#define MCCONFIGURATIONDATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCConfigurationData : NSObject {
    NSDictionary *mBaseConfiguration;
    NSDictionary *mBaseValueMap;
    NSDictionary *mBaseIndexMetadata;
    NSMutableArray *mTempTable;
    NSMutableDictionary *mTempRecord;
    NSMutableDictionary *mTempMatchingGroupsForABTests;
    NSMutableDictionary *mConfiguration;
    NSMutableDictionary *mConfigurationNoRecordFilters;
    NSMutableDictionary *mIndexedConfiguration;
    NSMutableDictionary *mIndexedConfigurationNoRecordFilters;
    NSMutableArray *mTempIndexedTable;
    NSMutableDictionary *mTempIndexedRecord;
    BOOL mDataChanged;
    NSMutableDictionary *mUserGroups;
}


@property (retain, nonatomic) NSString *valueMapSetNotification; // ivar: mValueMapSetNotification
@property (retain, nonatomic) NSString *valueMapMergedNotification; // ivar: mValueMapMergedNotification
@property (retain, nonatomic) NSString *valueMapClearedNotification; // ivar: mValueMapClearedNotification
@property (retain, nonatomic) NSString *valueMapChangedNotification; // ivar: mValueMapChangedNotification
@property (retain, nonatomic) NSString *configurationSetNotification; // ivar: mConfigurationSetNotification
@property (retain, nonatomic) NSString *configurationMergedNotification; // ivar: mConfigurationMergedNotification
@property (retain, nonatomic) NSString *configurationClearedNotification; // ivar: mConfigurationClearedNotification
@property (retain, nonatomic) NSString *configurationChangedNotification; // ivar: mConfigurationChangedNotification
@property (retain, nonatomic) NSString *indexMetadataSetNotification; // ivar: mIndexMetadataSetNotification
@property (retain, nonatomic) NSString *indexMetadataMergedNotification; // ivar: mIndexMetadataMergedNotification
@property (retain, nonatomic) NSString *indexMetadataClearedNotification; // ivar: mIndexMetadataClearedNotification
@property (retain, nonatomic) NSString *indexMetadataChangedNotification; // ivar: mIndexMetadataChangedNotification
@property (retain, nonatomic) NSString *userGroupsSetNotification; // ivar: mUserGroupsSetNotification
@property (retain, nonatomic) NSString *userGroupsClearedNotification; // ivar: mUserGroupsClearedNotification
@property (retain, nonatomic) NSString *userGroupsChangedNotification; // ivar: mUserGroupsChangedNotification
@property (retain, nonatomic) NSString *fieldValueMapKeyTag; // ivar: mFieldValueMapKeyTag
@property (retain, nonatomic) NSString *fieldValueTag; // ivar: mFieldValueTag
@property (retain, nonatomic) NSString *fieldABTestNameTag; // ivar: mFieldABTestNameTag
@property (retain, nonatomic) NSString *recordABTestFieldTag; // ivar: mRecordABTestFieldTag
@property (retain, nonatomic) NSString *recordABTestUserGroupTag; // ivar: mRecordABTestUserGroupTag
@property (retain, nonatomic) NSString *recordABTestNameTag; // ivar: mRecordABTestNameTag
@property (retain, nonatomic) NSString *defaultABTestGroup; // ivar: mDefaultABTestGroup
@property (retain, nonatomic) NSString *indexMetadataSheetIndexTag; // ivar: mIndexMetadataSheetIndexTag
@property (retain, nonatomic) NSString *indexMetadataColumnsTag; // ivar: mIndexMetadataColumnsTag


-(id)init;
-(void)dealloc;
-(void)sendNotification:(id)arg0 ;
-(void)processData;
-(void)setValueMap:(id)arg0 ;
-(void)mergeValueMap:(id)arg0 ;
-(void)cleanValueMap;
-(void)setConfiguration:(id)arg0 ;
-(void)mergeConfiguration:(id)arg0 ;
-(void)cleanConfiguration;
-(void)setIndexMetadata:(id)arg0 ;
-(void)mergeIndexMetadata:(id)arg0 ;
-(void)cleanIndexMetadata;
-(id)valueForField:(id)arg0 atTable:(id)arg1 searchByField:(id)arg2 withValue:(id)arg3 ;
-(id)valueForField:(id)arg0 atTable:(id)arg1 searchByField:(id)arg2 withValue:(id)arg3 ignoreRecordFilters:(BOOL)arg4 ;
-(id)valueForField:(id)arg0 atTable:(id)arg1 atIndex:(NSUInteger)arg2 ;
-(id)valueForField:(id)arg0 atTable:(id)arg1 atIndex:(NSUInteger)arg2 ignoreRecordFilters:(BOOL)arg3 ;
-(id)valueForFieldWithIndex:(NSUInteger)arg0 atTableWithIndex:(NSUInteger)arg1 searchByFieldIndex:(NSUInteger)arg2 withValue:(id)arg3 ;
-(id)valueForFieldWithIndex:(NSUInteger)arg0 atTableWithIndex:(NSUInteger)arg1 searchByFieldIndex:(NSUInteger)arg2 withValue:(id)arg3 ignoreRecordFilters:(BOOL)arg4 ;
-(id)valueForFieldWithIndex:(NSUInteger)arg0 atTableWithIndex:(NSUInteger)arg1 atIndex:(NSUInteger)arg2 ;
-(id)valueForFieldWithIndex:(NSUInteger)arg0 atTableWithIndex:(NSUInteger)arg1 atIndex:(NSUInteger)arg2 ignoreRecordFilters:(BOOL)arg3 ;
-(id)recordFromTable:(id)arg0 searchByField:(id)arg1 withValue:(id)arg2 ;
-(id)recordFromTable:(id)arg0 searchByField:(id)arg1 withValue:(id)arg2 ignoreRecordFilters:(BOOL)arg3 ;
-(id)recordFromTable:(id)arg0 atIndex:(NSUInteger)arg1 ;
-(id)recordFromTable:(id)arg0 atIndex:(NSUInteger)arg1 ignoreRecordFilters:(BOOL)arg2 ;
-(id)recordFromTableWithIndex:(NSUInteger)arg0 searchByFieldIndex:(NSUInteger)arg1 withValue:(id)arg2 ;
-(id)recordFromTableWithIndex:(NSUInteger)arg0 searchByFieldIndex:(NSUInteger)arg1 withValue:(id)arg2 ignoreRecordFilters:(BOOL)arg3 ;
-(id)recordFromTableWithIndex:(NSUInteger)arg0 atIndex:(NSUInteger)arg1 ;
-(id)recordFromTableWithIndex:(NSUInteger)arg0 atIndex:(NSUInteger)arg1 ignoreRecordFilters:(BOOL)arg2 ;
-(id)tableWithId:(id)arg0 ;
-(id)tableWithId:(id)arg0 ignoreRecordFilters:(BOOL)arg1 ;
-(id)tableWithIndex:(NSUInteger)arg0 ;
-(id)tableWithIndex:(NSUInteger)arg0 ignoreRecordFilters:(BOOL)arg1 ;
-(void)setUserGroup:(id)arg0 forABTest:(id)arg1 ;
-(id)userGroupForABTest:(id)arg0 ;
-(void)cleanUserGroups;
-(BOOL)isField:(id)arg0 presentOnAllRecordsFromTable:(id)arg1 ;
-(BOOL)isField:(id)arg0 presentOnAllRecordsFromTable:(id)arg1 ignoreRecordFilters:(BOOL)arg2 ;
-(BOOL)isFieldWithIndex:(NSUInteger)arg0 presentOnAllRecordsFromTable:(NSUInteger)arg1 ;
-(BOOL)isFieldWithIndex:(NSUInteger)arg0 presentOnAllRecordsFromTable:(NSUInteger)arg1 ignoreRecordFilters:(BOOL)arg2 ;
+(id)sharedMCConfigurationData;
+(BOOL)isMCConfigurationDataInitialized;
+(void)releaseSharedMCConfigurationData;


@end


#endif