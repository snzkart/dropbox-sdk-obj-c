///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"

@class DBTEAMMembersSetProfileArg;
@class DBTEAMUserSelectorArg;

#pragma mark - API Object

/// 
/// The MembersSetProfileArg struct.
/// 
/// Exactly one of team_member_id, email, or external_id must be provided to
/// identify the user account. At least one of new_email, new_external_id,
/// new_given_name, and/or new_surname must be provided.
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBTEAMMembersSetProfileArg : NSObject <DBSerializable> 

#pragma mark - Instance fields

/// Identity of user whose profile will be set.
@property (nonatomic, readonly) DBTEAMUserSelectorArg * _Nonnull user;

/// New email for member.
@property (nonatomic, readonly, copy) NSString * _Nullable dNewEmail;

/// New external ID for member.
@property (nonatomic, readonly, copy) NSString * _Nullable dNewExternalId;

/// New given name for member.
@property (nonatomic, readonly, copy) NSString * _Nullable dNewGivenName;

/// New surname for member.
@property (nonatomic, readonly, copy) NSString * _Nullable dNewSurname;

#pragma mark - Constructors

/// 
/// Full constructor for the DBTEAMMembersSetProfileArg struct (exposes all
/// instance variables).
/// 
/// @param user Identity of user whose profile will be set.
/// @param dNewEmail New email for member.
/// @param dNewExternalId New external ID for member.
/// @param dNewGivenName New given name for member.
/// @param dNewSurname New surname for member.
/// 
/// @return An initialized DBTEAMMembersSetProfileArg instance.
/// 
- (nonnull instancetype)initWithUser:(DBTEAMUserSelectorArg * _Nonnull)user dNewEmail:(NSString * _Nullable)dNewEmail dNewExternalId:(NSString * _Nullable)dNewExternalId dNewGivenName:(NSString * _Nullable)dNewGivenName dNewSurname:(NSString * _Nullable)dNewSurname;

/// 
/// Convenience constructor for the DBTEAMMembersSetProfileArg struct (exposes
/// only non-nullable instance variables with no default value).
/// 
/// @param user Identity of user whose profile will be set.
/// 
/// @return An initialized DBTEAMMembersSetProfileArg instance.
/// 
- (nonnull instancetype)initWithUser:(DBTEAMUserSelectorArg * _Nonnull)user;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the MembersSetProfileArg struct.
/// 
@interface DBTEAMMembersSetProfileArgSerializer : NSObject 

/// 
/// Serializes DBTEAMMembersSetProfileArg instances.
/// 
/// @param instance An instance of the DBTEAMMembersSetProfileArg API object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBTEAMMembersSetProfileArg API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBTEAMMembersSetProfileArg * _Nonnull)instance;

/// 
/// Deserializes DBTEAMMembersSetProfileArg instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBTEAMMembersSetProfileArg API object.
/// 
/// @return An instantiation of the DBTEAMMembersSetProfileArg object.
/// 
+ (DBTEAMMembersSetProfileArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
