//
// Copyright 2010-2017 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
// http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 The error domain for AWSCognitoAuth errors.
 <ul>
 <li>AWSCognitoAuthClientErrorUnknown - Unknown error.</li>
 <li>AWSCognitoAuthClientErrorUserCanceledOperation - User canceled flow.</li>
 <li>AWSCognitoAuthClientErrorLoadingPageFailed - A necessary page failed to load.</li>
 <li>AWSCognitoAuthClientErrorBadRequest - A parameter was missing or invalid.</li>
 <li>AWSCognitoAuthClientErrorSecurityReason - The security of this request could not be guaranteed.</li>
 <li>AWSCognitoAuthClientInvalidAuthenticationDelegate - The AWSCognitoAuthDelegate delegate is not setup or returned an invalid value.</li>
 <li>AWSCognitoAuthClientNoIdTokenIssued - If no id token was issued. For future use. </li>
 <li>AWSCognitoAuthClientErrorExpiredRefreshToken - If the refresh token is expired. </li>
 </ul>
 */
FOUNDATION_EXPORT NSString *const AWSCognitoAuthErrorDomain;

typedef NS_ENUM(NSInteger, AWSCognitoAuthClientErrorType) {
    AWSCognitoAuthClientErrorUnknown = 0,
    AWSCognitoAuthClientErrorUserCanceledOperation = -1000,
    AWSCognitoAuthClientErrorLoadingPageFailed = -2000,
    AWSCognitoAuthClientErrorBadRequest = -3000,
    AWSCognitoAuthClientErrorSecurityFailed = -4000,
    AWSCognitoAuthClientInvalidAuthenticationDelegate = -5000,
    AWSCognitoAuthClientNoIdTokenIssued = -6000,
    AWSCognitoAuthClientErrorExpiredRefreshToken = -7000
};

NS_ASSUME_NONNULL_END

