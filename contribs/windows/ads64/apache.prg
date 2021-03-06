#include "hbclass.ch"
#include "hbhrb.ch"

#xcommand ? <cText> => AP_RPuts( <cText> )

#define CRLF hb_OsNewLine()

extern AP_METHOD, AP_ARGS, AP_USERIP, PTRTOSTR, PTRTOUI, AP_RPUTS
extern AP_HEADERSINCOUNT, AP_HEADERSINKEY, AP_HEADERSINVAL
extern AP_POSTPAIRSCOUNT, AP_POSTPAIRSKEY, AP_POSTPAIRSVAL, AP_POSTPAIRS
extern AP_HEADERSOUTCOUNT, AP_HEADERSOUTSET, AP_HEADERSIN, AP_SETCONTENTTYPE
extern HB_VMPROCESSSYMBOLS, HB_VMEXECUTE, AP_GETENV, AP_BODY, HB_URLDECODE
extern SHOWCONSOLE

extern ADS
extern ADSADDCUSTOMKEY
extern ADSADT
extern ADSADTX
extern ADSAPPLICATIONEXIT
extern ADSBEGINTRANSACTION
extern ADSBLOB2FILE
extern ADSCACHEOPENCURSORS
extern ADSCACHEOPENTABLES
extern ADSCACHERECORDS
extern ADSCDX
extern ADSCDXX
extern ADSCHECKEXISTENCE
extern ADSCLEARAOF
extern ADSCLOSEALLTABLES
extern ADSCLOSECACHEDTABLES
extern ADSCLRCALLBACK
extern ADSCOMMITTRANSACTION
extern ADSCONNECT
extern ADSCONNECT60
extern ADSCONNECTION
extern ADSCONVERTTABLE
extern ADSCOPYTABLE
extern ADSCOPYTABLECONTENTS
extern ADSCREATEFTSINDEX
extern ADSCREATESAVEPOINT
extern ADSCREATESQLSTATEMENT
extern ADSCUSTOMIZEAOF
extern ADSDDADDINDEXFILE
extern ADSDDADDTABLE
extern ADSDDADDUSERTOGROUP
extern ADSDDCREATE
extern ADSDDCREATELINK
extern ADSDDCREATEREFINTEGRITY
extern ADSDDCREATEUSER
extern ADSDDDELETEUSER
extern ADSDDDROPLINK
extern ADSDDGETDATABASEPROPERTY
extern ADSDDGETUSERPROPERTY
extern ADSDDMODIFYLINK
extern ADSDDREMOVEINDEXFILE
extern ADSDDREMOVEREFINTEGRITY
extern ADSDDREMOVETABLE
extern ADSDDREMOVEUSERFROMGROUP
extern ADSDDSETDATABASEPROPERTY
extern ADSDECRYPTRECORD
extern ADSDECRYPTTABLE
extern ADSDELETECUSTOMKEY
extern ADSDELETEFILE
extern ADSDIRECTORY
extern ADSDISABLEENCRYPTION
extern ADSDISCONNECT
extern ADSENABLEENCRYPTION
extern ADSENCRYPTRECORD
extern ADSENCRYPTTABLE
extern ADSEVALAOF
extern ADSEXECUTESQL
extern ADSEXECUTESQLDIRECT
extern ADSFAILEDTRANSACTIONRECOVERY
extern ADSFILE2BLOB
extern ADSGETAOF
extern ADSGETAOFNOOPT
extern ADSGETAOFOPTLEVEL
extern ADSGETCONNECTIONTYPE
extern ADSGETFILTER
extern ADSGETHANDLETYPE
extern ADSGETLASTERROR
extern ADSGETMEMODATATYPE
extern ADSGETNUMACTIVELINKS
extern ADSGETNUMINDEXES
extern ADSGETNUMOPENTABLES
extern ADSGETRECORDCOUNT
extern ADSGETRELKEYPOS
extern ADSGETSERVERNAME
extern ADSGETSERVERTIME
extern ADSGETTABLEALIAS
extern ADSGETTABLECHARTYPE
extern ADSGETTABLECONTYPE
extern ADSINTRANSACTION
extern ADSISCONNECTIONALIVE
extern ADSISEMPTY
extern ADSISENCRYPTIONENABLED
extern ADSISEXPRVALID
extern ADSISINDEXED
extern ADSISNULL
extern ADSISRECORDENCRYPTED
extern ADSISRECORDINAOF
extern ADSISRECORDLOCKED
extern ADSISRECORDVALID
extern ADSISSERVERLOADED
extern ADSISTABLEENCRYPTED
extern ADSISTABLELOCKED
extern ADSKEYCOUNT
extern ADSKEYNO
extern ADSLOCKING
extern ADSMGCONNECT
extern ADSMGDISCONNECT
extern ADSMGGETACTIVITYINFO
extern ADSMGGETCOMMSTATS
extern ADSMGGETCONFIGINFO
extern ADSMGGETHANDLE
extern ADSMGGETINSTALLINFO
extern ADSMGGETLOCKOWNER
extern ADSMGGETLOCKS
extern ADSMGGETOPENINDEXES
extern ADSMGGETOPENTABLES
extern ADSMGGETOPENTABLES2
extern ADSMGGETSERVERTYPE
extern ADSMGGETUSERNAMES
extern ADSMGGETWORKERTHREADACTIVITY
extern ADSMGKILLUSER
extern ADSMGRESETCOMMSTATS
extern ADSMGSETHANDLE
extern ADSNTX
extern ADSNTXX
extern ADSPREPARESQL
extern ADSREFRESHAOF
extern ADSREFRESHRECORD
extern ADSREGCALLBACK
extern ADSREINDEX
extern ADSRESTRUCTURETABLE
extern ADSRIGHTSCHECK
extern ADSROLLBACK
extern ADSROLLBACKSAVEPOINT
extern ADSSETAOF
extern ADSSETCHARTYPE
extern ADSSETDATEFORMAT
extern ADSSETDEFAULT
extern ADSSETDELETED
extern ADSSETEPOCH
extern ADSSETEXACT
extern ADSSETFILETYPE
extern ADSSETINDEXDIRECTION
extern ADSSETRELKEYPOS
extern ADSSETSEARCHPATH
extern ADSSETSERVERTYPE
extern ADSSHOWERROR
extern ADSSTMTSETTABLELOCKTYPE
extern ADSSTMTSETTABLEPASSWORD
extern ADSSTMTSETTABLEREADONLY
extern ADSTESTLOGIN
extern ADSTESTRECLOCKS
extern ADSUNLOCKRECORD
extern ADSVERIFYSQL
extern ADSVERSION
extern ADSVFP
extern ADSVFPX
extern ADSWRITEALLRECORDS
extern ADSX
extern HB_RDDADSREGISTER

// contribs/xhb.lib
extern ALenAlloc
extern AMerge
extern ANSIToWide
extern Any2Str
extern ARemove
extern ASizeAlloc
extern ASplice
extern AtI
extern AtSkipStrings
extern BackButton
extern BackFormButton
extern CgiParseVar
extern CreateObject
extern CreateOleObject
extern CStr
extern CStrToVal
extern CToT
extern CurDirX
extern DateTime
extern Dbf2Text
extern dbImport
extern dbMerge
extern dbModifyStructure
extern Default
extern DestroyMutex
extern DirectoryRecurse
extern DisableWaitLocks
extern FCharCount
extern FileReader
extern FileStats
extern FileWriter
extern FLineCount
extern FParse
extern FParseEx
extern FParseLine
extern FWordCount
extern GetActiveObject
extern GetCurrentThread
extern GetDefaultPrinter
extern GetPrinters
extern GetRegistry
extern GetSystemThreadId
extern GetTable
extern GetThreadId
extern GetVolInfo
extern GfxPrimitive
extern GfxText
extern Greek2Html
extern gtGetClipboard
extern gtGetClipboardSize
extern gtPasteClipboard
extern gtProcessMessages
extern gtSetClipboard
extern haADelAt
extern haAGetKeyAt
extern haAGetPos
extern haAGetRealPos
extern haAGetValueAt
extern haASetValueAt
extern HAllocate
extern Hash
extern hbConsoleLock
extern hbConsoleUnlock
extern HBField
extern HBOrder
extern HBRecord
extern HBTable
extern hbxml_dataread
extern hbxml_node_add_below
extern hbxml_node_clone
extern hbxml_node_clone_tree
extern hbxml_node_insert_after
extern hbxml_node_insert_before
extern hbxml_node_insert_below
extern hbxml_node_to_string
extern hbxml_node_unlink
extern hbxml_node_write
extern hb_ArrayBlock
extern hb_ArrayId
extern hb_ArrayToStructure
extern hb_backgroundActive
extern hb_backgroundAdd
extern hb_backgroundDel
extern hb_backgroundReset
extern hb_backgroundRun
extern hb_backgroundRunForced
extern hb_backgroundTime
extern hb_bitIsSet
extern hb_BldLogMsg
extern hb_BuildInfo
extern hb_Checksum
extern hb_CloseProcess
extern hb_CloseStandardLog
extern hb_CmdArgArgV
extern hb_Compress
extern hb_CompressBufLen
extern hb_CompressError
extern hb_CompressErrorDesc
extern hb_CreateLen8
extern hb_Crypt
extern hb_CStructure
extern hb_CStructureCSyntax
extern hb_CStructureFromId
extern hb_CStructureId
extern hb_CTypeArrayId
extern hb_Decode
extern hb_DecodeOrEmpty
extern hb_Decrypt
extern hb_DeserialBegin
extern hb_DeserialNext
extern hb_DumpVar
extern hb_EmptyLogFileOnOff
extern hb_enumIndex
extern hb_Exec
extern hb_FReadLine
extern hb_FuncPtr
extern hb_F_Eof
extern hb_GetLen8
extern hb_HashAddMember
extern hb_HashId
extern hb_InitStandardLog
extern hb_IsRegexString
extern hb_IsService
extern hb_Is_CStructure
extern hb_LibDo
extern HB_LogChannel
extern HB_LogConsole
extern hb_LogDateStamp
extern HB_LogDbf
extern HB_LogDebug
extern HB_LogEmail
extern HB_LogFile
extern HB_Logger
extern HB_LogInetPort
extern HB_LogSysLog
extern hb_Member
extern hb_MultiThread
extern hb_MutexTimeOutLock
extern hb_MutexTryLock
extern hb_OpenProcess
extern hb_OpenStandardLog
extern hb_OutDebug
extern hb_OutDebugName
extern hb_Pointer2String
extern hb_PopSignalHandler
extern hb_PushSignalHandler
extern hb_QSelf
extern hb_QWith
extern hb_ReadIni
extern hb_ReadLine
extern hb_regexReplace
extern hb_ResetWith
extern hb_ServiceGenerateFault
extern hb_ServiceGenerateFPE
extern hb_ServiceLoop
extern hb_SetCodepage
extern hb_SetIniComment
extern hb_SetStandardLogStyle
extern hb_SignalDesc
extern hb_SizeOfCstructure
extern hb_StandardLog
extern hb_StandardLogAdd
extern hb_StandardLogName
extern hb_StartService
extern hb_String2Pointer
extern hb_StructureToArray
extern hb_SysLogClose
extern hb_SysLogMessage
extern hb_SysLogOpen
extern hb_TabExpand
extern hb_ToLogFile
extern hb_ToLogFileOnOff
extern hb_ToOutDebug
extern hb_ToOutDebugOnOff
extern hb_Uncompress
extern hb_VMMode
extern hb_WithObjectCounter
extern hb_WriteIni
extern hb_XMLErrorDesc
extern HClone
extern HCopy
extern HDefault
extern HDel
extern HDelAt
extern HEval
extern HexToNum
extern HexToStr
extern HFill
extern HGet
extern HGetAACompatibility
extern HGetAutoAdd
extern HGetCaseMatch
extern HGetKeyAt
extern HGetKeys
extern HGetPairAt
extern HGetPartition
extern HGetPos
extern HGetVAAPos
extern HGetValueAt
extern HGetValues
extern HHasKey
extern HMerge
extern HMS2D
extern Hour
extern HScan
extern HSet
extern HSetAACompatibility
extern HSetAutoAdd
extern HSetCaseMatch
extern HSetPartition
extern HSetValueAt
extern HtmlAny2Str
extern HtmlBrowse
extern HtmlDecodeUrl
extern HtmlFormName
extern HtmlFormObject
extern HtmlJSCmd
extern HtmlLinkStyle
extern HtmlPadL
extern HtmlPadR
extern HtmlPageHandle
extern HtmlPageObject
extern i18n
extern inetAccept
extern inetAddress
extern inetCleanup
extern inetClearError
extern inetClearPeriodCallback
extern inetClearTimeLimit
extern inetClearTimeout
extern inetClose
extern inetConnect
extern inetConnectIP
extern inetCount
extern inetCreate
extern inetCRLF
extern inetDataReady
extern inetDestroy
extern inetDGram
extern inetDGramBind
extern inetDGramRecv
extern inetDGramSend
extern inetErrorCode
extern inetErrorDesc
extern inetFD
extern inetGetAlias
extern inetGetHosts
extern inetGetPeriodCallback
extern inetGetTimeLimit
extern inetGetTimeout
extern inetInit
extern inetIsSocket
extern inetPort
extern inetRecv
extern inetRecvAll
extern inetRecvEndBlock
extern inetRecvLine
extern inetSend
extern inetSendAll
extern inetServer
extern inetSetPeriodCallback
extern inetSetTimeLimit
extern inetSetTimeout
extern inetStatus
extern InitGreek
extern IsAlNum
extern IsAscii
extern IsCntrl
extern IsDir
extern IsDirectory
extern IsGraph
extern IsLocked
extern IsPointer
extern IsPrint
extern IsPunct
extern IsSameThread
extern IsSpace
extern IsValidThread
extern IsXDigit
extern JoinThread
extern JWindow
extern KillAllThreads
extern KillThread
extern LibFree
extern LibLoad
extern MessageBox
extern MethodName
extern Minute
extern NetAppend
extern NetCommitAll
extern NetDbUse
extern NetDelete
extern NetError
extern NetFileLock
extern NetFlush
extern NetFunc
extern NetLock
extern NetOpenFiles
extern NetRecall
extern NetRecLock
extern Notify
extern NotifyAll
extern NumAndX
extern NumMirrX
extern NumNotX
extern NumOrX
extern NumRolX
extern NumToHex
extern NumXorX
extern Occurs
extern Ole2txtError
extern OleDefaultArg
extern OleError
extern os_IsWin2000
extern os_IsWin2000_Or_Later
extern os_IsWin2003
extern os_IsWin7
extern os_IsWin8
extern os_IsWin95
extern os_IsWin98
extern os_IsWin9x
extern os_IsWinME
extern os_IsWinNT
extern os_IsWinNT351
extern os_IsWinNT4
extern os_IsWinVista
extern os_IsWinVista_Or_Later
extern os_IsWinXP
extern os_IsWinXP_Or_Later
extern os_IsWTSClient
extern os_NetRegOk
extern os_NetVRedirOk
extern os_VersionInfo
extern ParseString
extern PrgExpToVal
extern PrinterExists
extern PrinterPortToname
extern PrintFileRaw
extern PutCounter
extern QueryRegistry
extern RAScan
extern ScrollFixed
extern SecondsSleep
extern SetCorruptFunc
extern SetDefaultPrinter
extern SetErrorFooter
extern SetInkeyAfterBlock
extern SetInkeyBeforeBlock
extern SetNetDelay
extern SetNetMsgColor
extern SetRegistry
extern SetUnhandledExceptionFilter
extern sprintf
extern StartThread
extern StopThread
extern SToT
extern StrDel
extern StringToLiteral
extern StrToHex
extern Subscribe
extern SubscribeNow
extern TableNew
extern TCGI
extern TCGIFile
extern ThreadGetCurrent
extern ThreadGetCurrentInternal
extern ThreadSleep
extern Throw
extern THtml
extern THtmlControl
extern THtmlForm
extern THtmlFrameSet
extern TimeOfDay
extern TJSList
extern TJSWindow
extern TOleAuto
extern TraceLog
extern TRPCClient
extern TRPCFunction
extern TRPCServeCon
extern TRPCService
extern TSSecs
extern TStream
extern TStreamFileReader
extern TStreamFileWriter
extern TToC
extern TToD
extern TToS
extern TXMLDocument
extern TXMLIterator
extern TXMLIteratorRegex
extern TXMLIteratorScan
extern TXMLNode
extern ValToArray
extern ValToBlock
extern ValToCharacter
extern ValToDate
extern ValToHash
extern ValToLogical
extern ValToNumber
extern ValToObject
extern ValToPrg
extern ValToPrgExp
extern ValToType
extern WaitForThreads
extern WideToANSI
extern WildMatch
extern Win32Bmp
extern Win32Prn
extern XHBEditor
extern xhb_ADel
extern xhb_AIns
extern xhb_AllTrim
extern xhb_bitAnd
extern xhb_bitOr
extern xhb_bitXor
extern xhb_CopyFile
extern xhb_Dec
extern xhb_Div
extern xhb_EEqual
extern xhb_Equal
extern xhb_ErrorLog
extern xhb_ErrorNew
extern xhb_ErrorSys
extern xhb_Greater
extern xhb_GreaterEq
extern xhb_HashError
extern xhb_Inc
extern xhb_Include
extern xhb_Index
extern xhb_Inkey
extern xhb_KeyTrans
extern xhb_Less
extern xhb_LessEq
extern xhb_Lib
extern xhb_MemoEdit
extern xhb_MemoWrit
extern xhb_Minus
extern xhb_Mod
extern xhb_Mult
extern xhb_NetName
extern xhb_NotEqual
extern xhb_Plus
extern xhb_Pow
extern xhb_RestScreen
extern xhb_RTrim
extern xhb_SaveScreen
extern xhb_SetTrace
extern xhb_SetTraceFile
extern xhb_SetTraceStack
extern xhb_TMemoEditor
extern xhb_Trim
extern xhb__Keyboard
extern XIsPrinter
extern _Array
extern _Block
extern _Character
extern _Hash
extern _Numeric
extern __ActiveStructure
extern __CStr_CopyTo
extern __ErrorBlock
extern __init_LONGLONGs
extern __MinimalErrorHandler
extern __mvSymbolInfo
extern __olePDisp
extern __OutDebug
extern __SendRawMsg

static hPP

//----------------------------------------------------------------//

function Main()

   local cFileName

   ErrorBlock( { | o | DoBreak( o ) } )

   cFileName = AP_FileName()
   AddPPRules()

   if File( cFileName )
      if Lower( Right( cFileName, 4 ) ) == ".hrb"
         hb_HrbDo( hb_HrbLoad( 1, cFileName ), AP_Args() )
      else
         hb_SetEnv( "PRGPATH",;
                    SubStr( cFileName, 1, RAt( "/", cFileName ) + RAt( "\", cFileName ) - 1 ) )
         Execute( MemoRead( cFileName ), AP_Args() )
      endif
   else
      ErrorLevel( 404 )
   endif   

return nil

//----------------------------------------------------------------//

function AddPPRules()

   if hPP == nil
      hPP = __pp_init()
      __pp_path( hPP, "~/harbour/include" )
      __pp_path( hPP, "c:\harbour\include" )
      if ! Empty( hb_GetEnv( "HB_INCLUDE" ) )
         __pp_path( hPP, hb_GetEnv( "HB_INCLUDE" ) )
      endif 	 
   endif

   __pp_addRule( hPP, "#xcommand ? [<explist,...>] => AP_RPuts( '<br>' [,<explist>] )" )
   __pp_addRule( hPP, "#xcommand ?? [<explist,...>] => AP_RPuts( [<explist>] )" )
   __pp_addRule( hPP, "#define CRLF hb_OsNewLine()" )
   __pp_addRule( hPP, "#xcommand TEXT <into:TO,INTO> <v> => #pragma __cstream|<v>:=%s" )
   __pp_addRule( hPP, "#xcommand TEXT <into:TO,INTO> <v> ADDITIVE => #pragma __cstream|<v>+=%s" )
   __pp_addRule( hPP, "#xcommand TEMPLATE [ USING <x> ] [ PARAMS [<v1>] [,<vn>] ] => " + ;
                      '#pragma __cstream | AP_RPuts( InlinePrg( %s, [@<x>] [,<(v1)>][+","+<(vn)>] [, @<v1>][, @<vn>] ) )' )
   __pp_addRule( hPP, "#xcommand BLOCKS [ PARAMS [<v1>] [,<vn>] ] => " + ;
                      '#pragma __cstream | AP_RPuts( ReplaceBlocks( %s, "{{", "}}" [,<(v1)>][+","+<(vn)>] [, @<v1>][, @<vn>] ) )' )   
   __pp_addRule( hPP, "#command ENDTEMPLATE => #pragma __endtext" )
   __pp_addRule( hPP, "#xcommand TRY  => BEGIN SEQUENCE WITH {| oErr | Break( oErr ) }" )
   __pp_addRule( hPP, "#xcommand CATCH [<!oErr!>] => RECOVER [USING <oErr>] <-oErr->" )
   __pp_addRule( hPP, "#xcommand FINALLY => ALWAYS" )
   __pp_addRule( hPP, "#xcommand DEFAULT <v1> TO <x1> [, <vn> TO <xn> ] => ;" + ;
                      "IF <v1> == NIL ; <v1> := <x1> ; END [; IF <vn> == NIL ; <vn> := <xn> ; END ]" )

return nil

//----------------------------------------------------------------//

function Execute( cCode, ... )

   local oHrb, uRet, lReplaced := .T.
   local cHBheaders1 := "~/harbour/include"
   local cHBheaders2 := "c:\harbour\include"

   while lReplaced 
      lReplaced = ReplaceBlocks( @cCode, "{%", "%}" )
      cCode = __pp_process( hPP, cCode )
   end

   oHrb = HB_CompileFromBuf( cCode, .T., "-n", "-I" + cHBheaders1, "-I" + cHBheaders2,;
                             "-I" + hb_GetEnv( "HB_INCLUDE" ), hb_GetEnv( "HB_USER_PRGFLAGS" ) )
   if ! Empty( oHrb )
      uRet = hb_HrbDo( hb_HrbLoad( 1, oHrb ), ... )
   endif

return uRet

//----------------------------------------------------------------//

function GetErrorInfo( oError )

   local cInfo := oError:operation, n
   local cCallStack := ""

   if ValType( oError:Args ) == "A"
      cInfo += "   Args:" + CRLF
      for n = 1 to Len( oError:Args )
         cInfo += "[" + Str( n, 4 ) + "] = " + ValType( oError:Args[ n ] ) + ;
                   "   " + ValToChar( oError:Args[ n ] ) + hb_OsNewLine()
      next
   endif
   
   n = 0
   while ! Empty( ProcName( n ) )
      cCallStack += "called from: " + ProcName( n ) + ", line: " + AllTrim( Str( ProcLine( n ) ) ) + "<br>" + CRLF
      n++
   end   

return "error: " + oError:Description + hb_OsNewLine() + cInfo + "<br><br>" + CRLF + ;
       cCallStack

//----------------------------------------------------------------//

static procedure DoBreak( oError )

   ? GetErrorInfo( oError )

   BREAK

//----------------------------------------------------------------//

function LoadHRB( cHrbFile_or_oHRB )

   local lResult := .F.

   if ValType( cHrbFile_or_oHRB ) == "C"
      if File( hb_GetEnv( "PRGPATH" ) + "/" + cHrbFile_or_oHRB )
         AAdd( M->getList,;
            hb_HrbLoad( 1, hb_GetEnv( "PRGPATH" ) + "/" + cHrbFile_or_oHRB ) )
         lResult = .T.   
      endif      
   endif
   
   if ValType( cHrbFile_or_oHRB ) == "P"
      AAdd( M->getList, hb_HrbLoad( 1, cHrbFile_or_oHRB ) )
      lResult = .T.
   endif
   
return lResult   

//----------------------------------------------------------------//

function ValToChar( u )

   local cType := ValType( u )
   local cResult

   do case
      case cType == "C"
           cResult = u

      case cType == "D"
           cResult = DToC( u )

      case cType == "L"
           cResult = If( u, ".T.", ".F." )

      case cType == "N"
           cResult = AllTrim( Str( u ) )

      case cType == "A"
           cResult = hb_ValToExp( u )

      case cType == "P"
           cResult = "(P)" 

      case cType == "H"
           cResult = hb_ValToExp( u )

      case cType == "U"
           cResult = "nil"

      otherwise
           cResult = "type not supported yet in function ValToChar()"
   endcase

return cResult   

//----------------------------------------------------------------//

function InlinePRG( cText, oTemplate, cParams, ... )

   local nStart, nEnd, cCode, cResult

   if PCount() > 1
      oTemplate = Template()
      if PCount() > 2
         oTemplate:cParams = cParams
      endif   
   endif   

   while ( nStart := At( "<?prg", cText ) ) != 0
      nEnd  = At( "?>", SubStr( cText, nStart + 5 ) )
      cCode = SubStr( cText, nStart + 5, nEnd - 1 )
      if oTemplate != nil
         AAdd( oTemplate:aSections, cCode )
      endif   
      cText = SubStr( cText, 1, nStart - 1 ) + ( cResult := ExecInline( cCode, cParams, ... ) ) + ;
              SubStr( cText, nStart + nEnd + 6 )
      if oTemplate != nil
         AAdd( oTemplate:aResults, cResult )
      endif   
   end 
   
   if oTemplate != nil
      oTemplate:cResult = cText
   endif   
   
return cText

//----------------------------------------------------------------//

function ExecInline( cCode, cParams, ... )

   if cParams == nil
      cParams = ""
   endif   

return Execute( "function __Inline( " + cParams + " )" + HB_OsNewLine() + cCode, ... )   

//----------------------------------------------------------------//

CLASS Template

   DATA aSections INIT {}
   DATA aResults  INIT {}
   DATA cParams   
   DATA cResult

ENDCLASS

//----------------------------------------------------------------//

function AP_PostPairs()

   local cPair, uPair, hPairs := {=>}

   for each cPair in hb_ATokens( AP_Body(), "&" )
      if ( uPair := At( "=", cPair ) ) > 0
            hb_HSet( hPairs, Left( cPair, uPair - 1 ), SubStr( cPair, uPair + 1 ) )
      endif
    next

return hPairs

//----------------------------------------------------------------//

function ReplaceBlocks( cCode, cStartBlock, cEndBlock, cParams, ... )

   local nStart, nEnd, cBlock
   local lReplaced := .F.
   
   hb_default( @cStartBlock, "{{" )
   hb_default( @cEndBlock, "}}" )
   hb_default( @cParams, "" )

   while ( nStart := At( cStartBlock, cCode ) ) != 0 .and. ;
         ( nEnd := At( cEndBlock, cCode ) ) != 0
      cBlock = SubStr( cCode, nStart + Len( cStartBlock ), nEnd - nStart - Len( cEndBlock ) )
      cCode = SubStr( cCode, 1, nStart - 1 ) + ;
              ValToChar( Eval( &( "{ |" + cParams + "| " + cBlock + " }" ), ... ) ) + ;
      SubStr( cCode, nEnd + Len( cEndBlock ) )
          lReplaced = .T.
   end
   
return If( HB_PIsByRef( 1 ), lReplaced, cCode )

//----------------------------------------------------------------//

function PathUrl()

   local cPath := AP_GetEnv( 'SCRIPT_NAME' )   
   local n     := RAt( '/', cPath )
        
return Substr( cPath, 1, n - 1 )

//----------------------------------------------------------------//

function PathBase( cDirFile )

   local cPath := hb_GetEnv( "PRGPATH" ) 
    
   hb_default( @cDirFile, '' )
    
   cPath += cDirFile
    
   if "Linux" $ OS()    
      cPath = StrTran( cPath, '\', '/' )     
   endif
   
return cPath

//----------------------------------------------------------------//

function Include( cFile )

   local cPath := AP_GetEnv( "DOCUMENT_ROOT" ) 

   hb_default( @cFile, '' )
   cFile = cPath + cFile   
   
   if "Linux" $ OS()
      cFile = StrTran( cFile, '\', '/' )     
   endif   
    
   if File( cFile )
      return MemoRead( cFile )
   endif
   
return ""

//----------------------------------------------------------------//

#pragma BEGINDUMP

#include <hbapi.h>
#include <hbvm.h>
#include <hbapiitm.h>
#include <hbapierr.h>

static void * pRequestRec, * pAPRPuts, * pAPSetContentType;
static void * pHeadersIn, * pHeadersOut, * pHeadersOutCount, * pHeadersOutSet;
static void * pHeadersInCount, * pHeadersInKey, * pHeadersInVal;
static void * pPostPairsCount, * pPostPairsKey, * pPostPairsVal;
static void * pAPGetenv, * pAPBody;
static const char * szFileName, * szArgs, * szMethod, * szUserIP;

#ifdef _MSC_VER
   #include <windows.h>

HB_FUNC( SHOWCONSOLE )     // to use the debugger locally on Windows
{
   ShowWindow( GetConsoleWindow(),  3 );
   ShowWindow( GetConsoleWindow(), 10 );
}

#else

HB_FUNC( SHOWCONSOLE )
{
}

#endif

HB_EXPORT_ATTR int hb_apache( void * _pRequestRec, void * _pAPRPuts, 
               const char * _szFileName, const char * _szArgs, const char * _szMethod, const char * _szUserIP,
               void * _pHeadersIn, void * _pHeadersOut, 
               void * _pHeadersInCount, void * _pHeadersInKey, void * _pHeadersInVal,
               void * _pPostPairsCount, void * _pPostPairsKey, void * _pPostPairsVal,
               void * _pHeadersOutCount, void * _pHeadersOutSet, void * _pAPSetContentType, void * _pAPGetenv,
               void * _pAPBody )
{
   pRequestRec       = _pRequestRec;
   pAPRPuts          = _pAPRPuts; 
   szFileName        = _szFileName;
   szArgs            = _szArgs;
   szMethod          = _szMethod;
   szUserIP          = _szUserIP;
   pHeadersIn        = _pHeadersIn;
   pHeadersOut       = _pHeadersOut;
   pHeadersInCount   = _pHeadersInCount;
   pHeadersInKey     = _pHeadersInKey;
   pHeadersInVal     = _pHeadersInVal;
   pPostPairsCount   = _pPostPairsCount;
   pPostPairsKey     = _pPostPairsKey;
   pPostPairsVal     = _pPostPairsVal;
   pHeadersOutCount  = _pHeadersOutCount;
   pHeadersOutSet    = _pHeadersOutSet;
   pAPSetContentType = _pAPSetContentType;
   pAPGetenv         = _pAPGetenv;
   pAPBody           = _pAPBody;
 
   hb_vmInit( HB_TRUE );
   return hb_vmQuit();
}   

typedef int ( * AP_RPUTS )( const char * s, void * r );

HB_FUNC( AP_RPUTS )
{
   AP_RPUTS ap_rputs = ( AP_RPUTS ) pAPRPuts;
   int iParams = hb_pcount(), iParam;

   for( iParam = 1; iParam <= iParams; iParam++ )
   {
      HB_SIZE nLen;
      HB_BOOL bFreeReq;
      char * buffer = hb_itemString( hb_param( iParam, HB_IT_ANY ), &nLen, &bFreeReq );

      ap_rputs( buffer, pRequestRec );
      ap_rputs( " ", pRequestRec ); 

      if( bFreeReq )
         hb_xfree( buffer );
   }     
}

HB_FUNC( AP_FILENAME )
{
   hb_retc( szFileName );
}

HB_FUNC( AP_ARGS )
{
   hb_retc( szArgs );
}

HB_FUNC( AP_METHOD )
{
   hb_retc( szMethod );
}

HB_FUNC( AP_USERIP )
{
   hb_retc( szUserIP );
}

typedef int ( * HEADERS_IN_COUNT )( void );

HB_FUNC( AP_HEADERSINCOUNT )
{
   HEADERS_IN_COUNT headers_in_count = ( HEADERS_IN_COUNT ) pHeadersInCount;
   
   hb_retnl( headers_in_count() );
}   

typedef int ( * HEADERS_OUT_COUNT )( void );

HB_FUNC( AP_HEADERSOUTCOUNT )
{
   HEADERS_OUT_COUNT headers_out_count = ( HEADERS_OUT_COUNT ) pHeadersOutCount;

   hb_retnl( headers_out_count() );
}

typedef const char * ( * HEADERS_IN_KEY )( int );

HB_FUNC( AP_HEADERSINKEY )
{
   HEADERS_IN_KEY headers_in_key = ( HEADERS_IN_KEY ) pHeadersInKey;
   
   hb_retc( headers_in_key( hb_parnl( 1 ) ) );
}   

typedef const char * ( * HEADERS_IN_VAL )( int );

HB_FUNC( AP_HEADERSINVAL )
{
   HEADERS_IN_VAL headers_in_val = ( HEADERS_IN_VAL ) pHeadersInVal;
   
   hb_retc( headers_in_val( hb_parnl( 1 ) ) );
}   

typedef int ( * POST_PAIRS_COUNT )( void );

HB_FUNC( AP_POSTPAIRSCOUNT )
{
   POST_PAIRS_COUNT post_pairs_count = ( POST_PAIRS_COUNT ) pPostPairsCount;

   hb_retnl( post_pairs_count() );
}

typedef void ( * HEADERS_OUT_SET )( const char * szKey, const char * szValue );

HB_FUNC( AP_HEADERSOUTSET )
{
   HEADERS_OUT_SET headers_out_set = ( HEADERS_OUT_SET ) pHeadersOutSet;

   headers_out_set( hb_parc( 1 ), hb_parc( 2 ) );
}

typedef const char * ( * POST_PAIRS_KEY )( int );

HB_FUNC( AP_POSTPAIRSKEY )
{
   POST_PAIRS_KEY post_pairs_key = ( POST_PAIRS_KEY ) pPostPairsKey;

   hb_retc( post_pairs_key( hb_parnl( 1 ) ) );
}

typedef const char * ( * POST_PAIRS_VAL )( int );

HB_FUNC( AP_POSTPAIRSVAL )
{
   POST_PAIRS_VAL post_pairs_val = ( POST_PAIRS_VAL ) pPostPairsVal;

   hb_retc( post_pairs_val( hb_parnl( 1 ) ) );
}

HB_FUNC( PTRTOSTR )
{
   const char * * pStrs = ( const char * * ) hb_parnll( 1 );   
   
   hb_retc( * ( pStrs + hb_parnl( 2 ) ) );
}

HB_FUNC( PTRTOUI )
{
   unsigned int * pNums = ( unsigned int * ) hb_parnll( 1 );   
   
   hb_retnl( * ( pNums + hb_parnl( 2 ) ) );
}

HB_FUNC( AP_HEADERSIN )
{
   PHB_ITEM hHeadersIn = hb_hashNew( NULL ); 
   HEADERS_IN_COUNT headers_in_count = ( HEADERS_IN_COUNT ) pHeadersInCount;
   int iKeys = headers_in_count();

   if( iKeys > 0 )
   {
      int iKey;
      PHB_ITEM pKey = hb_itemNew( NULL );
      PHB_ITEM pValue = hb_itemNew( NULL );   
      HEADERS_IN_KEY headers_in_key = ( HEADERS_IN_KEY ) pHeadersInKey;
      HEADERS_IN_VAL headers_in_val = ( HEADERS_IN_VAL ) pHeadersInVal;

      hb_hashPreallocate( hHeadersIn, iKeys );
   
      for( iKey = 0; iKey < iKeys; iKey++ )
      {
         hb_itemPutCConst( pKey,   headers_in_key( iKey ) );
         hb_itemPutCConst( pValue, headers_in_val( iKey ) );
         hb_hashAdd( hHeadersIn, pKey, pValue );
      }
      
      hb_itemRelease( pKey );
      hb_itemRelease( pValue );
   }  
   
   hb_itemReturnRelease( hHeadersIn );
}

typedef void ( * AP_SET_CONTENTTYPE )( const char * szContentType );

HB_FUNC( AP_SETCONTENTTYPE )
{
   AP_SET_CONTENTTYPE ap_set_contenttype = ( AP_SET_CONTENTTYPE ) pAPSetContentType;

   ap_set_contenttype( hb_parc( 1 ) );
}

typedef const char * ( * AP_GET_ENV )( const char * );

HB_FUNC( AP_GETENV )
{
   AP_GET_ENV ap_getenv = ( AP_GET_ENV ) pAPGetenv;
   
   hb_retc( ap_getenv( hb_parc( 1 ) ) );
}   

static char * szBody = NULL;

typedef const char * ( * AP_BODY )( void );

HB_FUNC( AP_BODY )
{
   AP_BODY ap_body = ( AP_BODY ) pAPBody;
   char * _szBody;
   
   if( szBody )
      hb_retc( szBody );
   else
   {
      _szBody = ( char * ) ap_body();
      szBody = ( char * ) hb_xgrab( strlen( _szBody ) + 1 );
      strcpy( szBody, _szBody );
      hb_retc( _szBody );
   }   
}   

HB_FUNC( HB_VMPROCESSSYMBOLS )
{
   hb_retnll( ( HB_LONGLONG ) hb_vmProcessSymbols );
}   

HB_FUNC( HB_VMEXECUTE )
{
   hb_retnll( ( HB_LONGLONG ) hb_vmExecute );
}   

HB_FUNC( HB_URLDECODE ) // Giancarlo's TIP_URLDECODE
{
   const char * pszData = hb_parc( 1 );

   if( pszData )
   {
      HB_ISIZ nLen = hb_parclen( 1 );

      if( nLen )
      {
         HB_ISIZ nPos = 0, nPosRet = 0;

         /* maximum possible length */
         char * pszRet = ( char * ) hb_xgrab( nLen );

         while( nPos < nLen )
         {
            char cElem = pszData[ nPos ];

            if( cElem == '%' && HB_ISXDIGIT( pszData[ nPos + 1 ] ) &&
                                HB_ISXDIGIT( pszData[ nPos + 2 ] ) )
            {
               cElem = pszData[ ++nPos ];
               pszRet[ nPosRet ]  = cElem - ( cElem >= 'a' ? 'a' - 10 :
                                            ( cElem >= 'A' ? 'A' - 10 : '0' ) );
               pszRet[ nPosRet ] <<= 4;
               cElem = pszData[ ++nPos ];
               pszRet[ nPosRet ] |= cElem - ( cElem >= 'a' ? 'a' - 10 :
                                            ( cElem >= 'A' ? 'A' - 10 : '0' ) );
            }
            else
               pszRet[ nPosRet ] = cElem == '+' ? ' ' : cElem;

            nPos++;
            nPosRet++;
         }

         /* this function also adds a zero */
         /* hopefully reduce the size of pszRet */
         hb_retclen_buffer( ( char * ) hb_xrealloc( pszRet, nPosRet + 1 ), nPosRet );
      }
      else
         hb_retc_null();
   }
   else
      hb_errRT_BASE( EG_ARG, 3012, NULL,
                     HB_ERR_FUNCNAME, 1, hb_paramError( 1 ) );
}


#pragma ENDDUMP
