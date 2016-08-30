///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"
#import "DBFILESCommitInfo.h"

@class DBFILESCommitInfoWithProperties;
@class DBFILESWriteMode;
@class DBPROPERTIESPropertyGroup;

#pragma mark - API Object

/// 
/// The CommitInfoWithProperties struct.
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBFILESCommitInfoWithProperties : DBFILESCommitInfo <DBSerializable> 

#pragma mark - Instance fields

/// List of custom properties to add to file.
@property (nonatomic, readonly) NSArray<DBPROPERTIESPropertyGroup *> * _Nullable propertyGroups;

#pragma mark - Constructors

/// 
/// Full constructor for the DBFILESCommitInfoWithProperties struct (exposes all
/// instance variables).
/// 
/// @param path Path in the user's Dropbox to save the file.
/// @param mode Selects what to do if the file already exists.
/// @param autorename If there's a conflict, as determined by :field:`mode`,
/// have the Dropbox server try to autorename the file to avoid conflict.
/// @param clientModified The value to store as the :field:`client_modified`
/// timestamp. Dropbox automatically records the time at which the file was
/// written to the Dropbox servers. It can also record an additional timestamp,
/// provided by Dropbox desktop clients, mobile clients, and API apps of when
/// the file was actually created or modified.
/// @param mute Normally, users are made aware of any file modifications in
/// their Dropbox account via notifications in the client software. If
/// :val:`true`, this tells the clients that this modification shouldn't result
/// in a user notification.
/// @param propertyGroups List of custom properties to add to file.
/// 
/// @return An initialized DBFILESCommitInfoWithProperties instance.
/// 
- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path mode:(DBFILESWriteMode * _Nullable)mode autorename:(NSNumber * _Nullable)autorename clientModified:(NSDate * _Nullable)clientModified mute:(NSNumber * _Nullable)mute propertyGroups:(NSArray<DBPROPERTIESPropertyGroup *> * _Nullable)propertyGroups;

/// 
/// Convenience constructor for the DBFILESCommitInfoWithProperties struct
/// (exposes only non-nullable instance variables with no default value).
/// 
/// @param path Path in the user's Dropbox to save the file.
/// 
/// @return An initialized DBFILESCommitInfoWithProperties instance.
/// 
- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the CommitInfoWithProperties struct.
/// 
@interface DBFILESCommitInfoWithPropertiesSerializer : NSObject 

/// 
/// Serializes DBFILESCommitInfoWithProperties instances.
/// 
/// @param instance An instance of the DBFILESCommitInfoWithProperties API
/// object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBFILESCommitInfoWithProperties API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBFILESCommitInfoWithProperties * _Nonnull)instance;

/// 
/// Deserializes DBFILESCommitInfoWithProperties instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBFILESCommitInfoWithProperties API object.
/// 
/// @return An instantiation of the DBFILESCommitInfoWithProperties object.
/// 
+ (DBFILESCommitInfoWithProperties * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
