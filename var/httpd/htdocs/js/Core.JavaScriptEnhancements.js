// --
// Copyright (C) 2001-2018 OTRS AG, https://otrs.com/
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (GPL). If you
// did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
// --

"use strict";

(function () {

    /**
     * @function
     * @description
     *      This function checks if all given parameter objects are jQuery objects.
     * @return
     *      {boolean} Returns true if all parameter objects are jQuery objects
     */
    window.isJQueryObject = function () {
        var I;
        if (typeof jQuery === 'undefined') {
            return false;
        }
        for (I = 0; I < arguments.length; I++) {
            if (!(arguments[I] instanceof jQuery)) {
                return false;
            }
        }
        return true;
    };
}());
