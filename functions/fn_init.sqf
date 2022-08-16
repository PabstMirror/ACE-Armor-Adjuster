// Copyright 2022 Sysroot

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

    // http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Override damage handling for ACE Medical for all units on server
if (isServer) then {
	// Call AAA_fnc_initUnit locally to each unit when they init
	["CAManBase", "init", {_this remoteExecCall ["AAA_fnc_initUnit", _this#0]}, true, [], true] call CBA_fnc_addClassEventHandler;
};