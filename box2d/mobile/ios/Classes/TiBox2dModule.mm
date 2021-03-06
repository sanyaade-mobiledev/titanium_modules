/**
 *  Copyright 2011 Jeff Haynie
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

#import "TiBox2dModule.hh"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import "TiBox2dWorldProxy.hh"

@implementation TiBox2dModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"A391B0DB-94F5-4820-9972-F7D7843545A6";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"ti.box2d";
}

#pragma mark box2d

-(id)createWorld:(id)args
{
	TiViewProxy *viewproxy = [args objectAtIndex:0];
	TiBox2dWorldProxy *proxy = [[TiBox2dWorldProxy alloc] initWithViewProxy:viewproxy pageContext:[self executionContext]];
	return [proxy autorelease];
}

-(id)REV_JOINT
{
    return NUMINT(1);
}

-(id)STATIC_BODY
{

    return @"static";
}

-(id)DYNAMIC_BODY
{
 	return @"dynamic";
}

-(id)KINEMATIC_BODY
{
 	return @"kinematic";
}

@end
