// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMDATABASE_H
#define APMDATABASE_H


#import <Foundation/Foundation.h>

@class APMSqliteStore;
@class APMPersistedConfig;

@interface APMDatabase : NSObject {
    APMSqliteStore *_sqliteStore;
    APMPersistedConfig *_persistedConfig;
}




-(id)initWithDatabaseName:(id)arg0 persistedConfig:(id)arg1 ;
-(void)reset;
-(BOOL)performTransaction:(id)arg0 ;
-(BOOL)initializeAppMetadata;
-(id)queryAppMetadata:(*id)arg0 ;
-(BOOL)updateAppMetadata:(id)arg0 error:(*id)arg1 ;
-(id)dailyCounts:(*id)arg0 ;
-(BOOL)updateDailyCounts:(id)arg0 error:(*id)arg1 ;
-(BOOL)insertIfNotExistsRawEventMetadata:(id)arg0 error:(*id)arg1 ;
-(id)queryRawEventsMetadataWithFingerprint:(NSInteger)arg0 error:(*id)arg1 ;
-(BOOL)deleteRawEventMetadataWithMetadataFingerprint:(NSInteger)arg0 error:(*id)arg1 ;
-(BOOL)deleteUnusedRawEventsMetadata:(*id)arg0 ;
-(id)isRawEventsTableEmpty:(*id)arg0 ;
-(BOOL)insertRawEvent:(id)arg0 metadataFingerprint:(NSInteger)arg1 isRealtime:(BOOL)arg2 error:(*id)arg3 ;
-(id)queryLatestRawEventTime:(*id)arg0 ;
-(id)rawEventsWithMetadataFingerprint:(NSInteger)arg0 error:(*id)arg1 eventFilter:(id)arg2 ;
-(id)containsRawEventWithMetadataFingerprint:(NSInteger)arg0 error:(*id)arg1 ;
-(BOOL)deleteRawEventsWithMaxRowID:(NSInteger)arg0 error:(*id)arg1 ;
-(id)deleteRawEventsOverAbsoluteLimit:(*id)arg0 ;
-(BOOL)deleteStaleRawEventsDataOlderThanMaxAge:(CGFloat)arg0 error:(*id)arg1 ;
-(id)nextMetadataFingerprintToProcess:(*id)arg0 ;
-(id)rawEventDataFromDictionary:(id)arg0 error:(*id)arg1 ;
-(id)containsRealtimeRawEventsWithError:(*id)arg0 ;
-(id)isQueuedBundleTableEmpty:(*id)arg0 ;
-(BOOL)insertBundle:(id)arg0 isRealtime:(BOOL)arg1 error:(*id)arg2 ;
-(BOOL)incrementRetryCounterForBundlesWithIDs:(id)arg0 error:(*id)arg1 ;
-(id)queryBundlesWithCountLimit:(NSInteger)arg0 sizeLimit:(NSInteger)arg1 error:(*id)arg2 ;
-(id)queryBundlesWithRowIDs:(id)arg0 error:(*id)arg1 ;
-(BOOL)deleteBundlesWithRowIDs:(id)arg0 error:(*id)arg1 ;
-(id)maybeDeleteStaleData:(*id)arg0 ;
-(BOOL)deleteStaleBundlesOlderThanMaxAge:(CGFloat)arg0 error:(*id)arg1 ;
-(id)queryLatestBundleTime:(*id)arg0 ;
-(id)containsRealtimeBundlesWithError:(*id)arg0 ;
-(id)publicEventCount:(*id)arg0 ;
-(id)allEventAggregates:(*id)arg0 ;
-(id)eventAggregatesWithName:(id)arg0 error:(*id)arg1 ;
-(BOOL)updateEventAggregates:(id)arg0 error:(*id)arg1 ;
-(id)publicUserAttributeCount:(*id)arg0 ;
-(id)userAttributeCountForOrigin:(id)arg0 error:(*id)arg1 ;
-(id)containsUserAttributeWithName:(id)arg0 error:(*id)arg1 ;
-(id)userAttributeWithName:(id)arg0 error:(*id)arg1 ;
-(id)allLifetimeValueUserAttributes:(*id)arg0 ;
-(id)userAttributesIncludingInternal:(BOOL)arg0 error:(*id)arg1 ;
-(BOOL)updateUserAttribute:(id)arg0 error:(*id)arg1 ;
-(BOOL)deleteUserAttributeWithName:(id)arg0 error:(*id)arg1 ;
-(id)allFilterResults:(*id)arg0 ;
-(id)allAudienceIDs:(*id)arg0 ;
-(id)eventFiltersForEventName:(id)arg0 error:(*id)arg1 ;
-(id)propertyFiltersForPropertyName:(id)arg0 error:(*id)arg1 ;
-(id)filterResultForAudienceID:(int)arg0 error:(*id)arg1 ;
-(BOOL)deleteFilterResults:(id)arg0 error:(*id)arg1 ;
-(BOOL)updateEventFilters:(id)arg0 error:(*id)arg1 ;
-(BOOL)updatePropertyFilters:(id)arg0 error:(*id)arg1 ;
-(BOOL)updateFilterResults:(id)arg0 error:(*id)arg1 ;
-(BOOL)deleteEventFilters:(id)arg0 error:(*id)arg1 ;
-(BOOL)deletePropertyFilters:(id)arg0 error:(*id)arg1 ;
-(BOOL)deleteAllEventFilters:(*id)arg0 ;
-(BOOL)deleteAllPropertyFilters:(*id)arg0 ;
-(BOOL)updateRemoteConfig:(id)arg0 error:(*id)arg1 ;
-(BOOL)updateRemoteConfigSuccessfulTimestamp:(CGFloat)arg0 error:(*id)arg1 ;
-(id)queryMeasurementConfigWithError:(*id)arg0 ;
-(id)lastRemoteConfigUpdateTimestamp:(*id)arg0 ;
-(id)insertIfNotDuplicatePurchaseFingerprint:(id)arg0 error:(*id)arg1 ;
-(id)conditionalUserPropertyWithName:(id)arg0 error:(*id)arg1 ;
-(BOOL)updateConditionalUserProperty:(id)arg0 error:(*id)arg1 ;
-(BOOL)deleteConditionalUserPropertyWithName:(id)arg0 error:(*id)arg1 ;
-(id)timedOutConditionalUserPropertiesWithError:(*id)arg0 ;
-(id)expiredConditionalUserPropertiesWithError:(*id)arg0 ;
-(id)triggeredConditionalUserPropertiesWithEventName:(id)arg0 error:(*id)arg1 ;
-(id)conditionalUserPropertiesWithPrefix:(id)arg0 filterByOrigin:(id)arg1 error:(*id)arg2 ;
-(id)conditionalUserPropertiesWithCondition:(id)arg0 parameterValues:(id)arg1 error:(*id)arg2 ;
-(id)mainEventAndChildCountPairWithEventID:(NSInteger)arg0 error:(*id)arg1 ;
-(BOOL)updateComplexEventForAudienceEvaluationWithEventID:(NSInteger)arg0 childEventCount:(NSInteger)arg1 mainEvent:(id)arg2 error:(*id)arg3 ;
-(BOOL)deleteComplexEventForAudienceEvaluationWithEventID:(NSInteger)arg0 error:(*id)arg1 ;
-(BOOL)initializeDatabaseResourcesWithContext:(id)arg0 databasePath:(id)arg1 ;
-(BOOL)ensureAllTables;
-(id)allDataTypesFromTableWithName:(id)arg0 tableLimit:(NSInteger)arg1 error:(*id)arg2 createDataTypeBlock:(id)arg3 ;
-(id)dataTypesFromTableWithName:(id)arg0 columnName:(id)arg1 columnValue:(id)arg2 error:(*id)arg3 createDataTypeBlock:(id)arg4 ;
-(BOOL)insertDataType:(id)arg0 inTableWithName:(id)arg1 error:(*id)arg2 createDictionaryBlock:(id)arg3 ;
-(BOOL)upsertDataType:(id)arg0 inTableWithName:(id)arg1 columnName:(id)arg2 columnValue:(id)arg3 tableLimit:(NSInteger)arg4 error:(*id)arg5 createDictionaryBlock:(id)arg6 ;
-(BOOL)updateDataType:(id)arg0 inTableWithName:(id)arg1 columnName:(id)arg2 columnValue:(id)arg3 error:(*id)arg4 createDictionaryBlock:(id)arg5 ;


@end


#endif