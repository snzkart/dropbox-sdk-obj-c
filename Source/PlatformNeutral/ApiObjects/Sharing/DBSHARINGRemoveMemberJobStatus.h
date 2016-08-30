///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"

@class DBSHARINGMemberAccessLevelResult;
@class DBSHARINGRemoveFolderMemberError;
@class DBSHARINGRemoveMemberJobStatus;

#pragma mark - API Object

/// 
/// The RemoveMemberJobStatus union.
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBSHARINGRemoveMemberJobStatus : NSObject <DBSerializable> 

#pragma mark - Instance fields

/// The DBSHARINGRemoveMemberJobStatusTag enum type represents the possible tag
/// states with which the DBSHARINGRemoveMemberJobStatus union can exist.
typedef NS_ENUM(NSInteger, DBSHARINGRemoveMemberJobStatusTag) {
    /// The asynchronous job is still in progress.
    DBSHARINGRemoveMemberJobStatusInProgress,

    /// Removing the folder member has finished. The value is information about
    /// whether the member has another form of access.
    DBSHARINGRemoveMemberJobStatusComplete,

    /// (no description).
    DBSHARINGRemoveMemberJobStatusFailed,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBSHARINGRemoveMemberJobStatusTag tag;

/// Removing the folder member has finished. The value is information about
/// whether the member has another form of access. Ensure the isComplete method
/// returns true before accessing, otherwise a runtime exception will be raised.
@property (nonatomic, readonly) DBSHARINGMemberAccessLevelResult * _Nonnull complete;

/// (no description). Ensure the isFailed method returns true before accessing,
/// otherwise a runtime exception will be raised.
@property (nonatomic, readonly) DBSHARINGRemoveFolderMemberError * _Nonnull failed;

#pragma mark - Constructors

/// 
/// Initializes union class with tag state of InProgress.
/// 
/// About the InProgress tag state: The asynchronous job is still in progress.
/// 
/// @return An initialized DBSHARINGRemoveMemberJobStatus instance.
/// 
- (nonnull instancetype)initWithInProgress;

/// 
/// Initializes union class with tag state of Complete.
/// 
/// About the Complete tag state: Removing the folder member has finished. The
/// value is information about whether the member has another form of access.
/// 
/// @param complete Removing the folder member has finished. The value is
/// information about whether the member has another form of access.
/// 
/// @return An initialized DBSHARINGRemoveMemberJobStatus instance.
/// 
- (nonnull instancetype)initWithComplete:(DBSHARINGMemberAccessLevelResult * _Nonnull)complete;

/// 
/// Initializes union class with tag state of Failed.
/// 
/// @param failed (no description).
/// 
/// @return An initialized DBSHARINGRemoveMemberJobStatus instance.
/// 
- (nonnull instancetype)initWithFailed:(DBSHARINGRemoveFolderMemberError * _Nonnull)failed;

#pragma mark - Tag state methods

/// 
/// Retrieves whether the union's current tag state has value InProgress.
/// 
/// @return Whether the union's current tag state has value InProgress.
/// 
- (BOOL)isInProgress;

/// 
/// Retrieves whether the union's current tag state has value Complete.
/// 
/// @note Call this method and ensure it returns true before accessing the
/// complete property, otherwise a runtime exception will be thrown.
/// 
/// @return Whether the union's current tag state has value Complete.
/// 
- (BOOL)isComplete;

/// 
/// Retrieves whether the union's current tag state has value Failed.
/// 
/// @note Call this method and ensure it returns true before accessing the
/// failed property, otherwise a runtime exception will be thrown.
/// 
/// @return Whether the union's current tag state has value Failed.
/// 
- (BOOL)isFailed;

/// 
/// Retrieves string value of union's current tag state.
/// 
/// @return A human-readable string representing the union's current tag state.
/// 
- (NSString * _Nonnull)tagName;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the DBSHARINGRemoveMemberJobStatus union.
/// 
@interface DBSHARINGRemoveMemberJobStatusSerializer : NSObject 

/// 
/// Serializes DBSHARINGRemoveMemberJobStatus instances.
/// 
/// @param instance An instance of the DBSHARINGRemoveMemberJobStatus API
/// object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBSHARINGRemoveMemberJobStatus API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBSHARINGRemoveMemberJobStatus * _Nonnull)instance;

/// 
/// Deserializes DBSHARINGRemoveMemberJobStatus instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBSHARINGRemoveMemberJobStatus API object.
/// 
/// @return An instantiation of the DBSHARINGRemoveMemberJobStatus object.
/// 
+ (DBSHARINGRemoveMemberJobStatus * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
