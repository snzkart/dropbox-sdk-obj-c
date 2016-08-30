///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"

@class DBSHARINGAccessLevel;
@class DBSHARINGAddFileMemberArgs;
@class DBSHARINGMemberSelector;

#pragma mark - API Object

/// 
/// The AddFileMemberArgs struct.
/// 
/// Arguments for addFileMember.
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBSHARINGAddFileMemberArgs : NSObject <DBSerializable> 

#pragma mark - Instance fields

/// File to which to add members.
@property (nonatomic, readonly, copy) NSString * _Nonnull file;

/// Members to add. Note that even an email address is given, this may result in
/// a user being directy added to the membership if that email is the user's
/// main account email.
@property (nonatomic, readonly) NSArray<DBSHARINGMemberSelector *> * _Nonnull members;

/// Message to send to added members in their invitation.
@property (nonatomic, readonly, copy) NSString * _Nullable customMessage;

/// Whether added members should be notified via device notifications of their
/// invitation.
@property (nonatomic, readonly, copy) NSNumber * _Nonnull quiet;

/// AccessLevel union object, describing what access level we want to give new
/// members.
@property (nonatomic, readonly) DBSHARINGAccessLevel * _Nonnull accessLevel;

/// If the custom message should be added as a comment on the file.
@property (nonatomic, readonly, copy) NSNumber * _Nonnull addMessageAsComment;

#pragma mark - Constructors

/// 
/// Full constructor for the DBSHARINGAddFileMemberArgs struct (exposes all
/// instance variables).
/// 
/// @param file File to which to add members.
/// @param members Members to add. Note that even an email address is given,
/// this may result in a user being directy added to the membership if that
/// email is the user's main account email.
/// @param customMessage Message to send to added members in their invitation.
/// @param quiet Whether added members should be notified via device
/// notifications of their invitation.
/// @param accessLevel AccessLevel union object, describing what access level we
/// want to give new members.
/// @param addMessageAsComment If the custom message should be added as a
/// comment on the file.
/// 
/// @return An initialized DBSHARINGAddFileMemberArgs instance.
/// 
- (nonnull instancetype)initWithFile:(NSString * _Nonnull)file members:(NSArray<DBSHARINGMemberSelector *> * _Nonnull)members customMessage:(NSString * _Nullable)customMessage quiet:(NSNumber * _Nullable)quiet accessLevel:(DBSHARINGAccessLevel * _Nullable)accessLevel addMessageAsComment:(NSNumber * _Nullable)addMessageAsComment;

/// 
/// Convenience constructor for the DBSHARINGAddFileMemberArgs struct (exposes
/// only non-nullable instance variables with no default value).
/// 
/// @param file File to which to add members.
/// @param members Members to add. Note that even an email address is given,
/// this may result in a user being directy added to the membership if that
/// email is the user's main account email.
/// 
/// @return An initialized DBSHARINGAddFileMemberArgs instance.
/// 
- (nonnull instancetype)initWithFile:(NSString * _Nonnull)file members:(NSArray<DBSHARINGMemberSelector *> * _Nonnull)members;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the AddFileMemberArgs struct.
/// 
@interface DBSHARINGAddFileMemberArgsSerializer : NSObject 

/// 
/// Serializes DBSHARINGAddFileMemberArgs instances.
/// 
/// @param instance An instance of the DBSHARINGAddFileMemberArgs API object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBSHARINGAddFileMemberArgs API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBSHARINGAddFileMemberArgs * _Nonnull)instance;

/// 
/// Deserializes DBSHARINGAddFileMemberArgs instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBSHARINGAddFileMemberArgs API object.
/// 
/// @return An instantiation of the DBSHARINGAddFileMemberArgs object.
/// 
+ (DBSHARINGAddFileMemberArgs * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
