@echo off
:abfrage
REM ++ Abfrage der Funktionen +++++++++++
cls
echo +++++++++++++++++++++++++++++++++++++
echo +++ Bitte Geben Sie die Name vom Projekt +++
echo +++++++++++++++++++++++++++++++++++++
echo.
echo.
echo.

echo.
set /p eingabe=Projektname:

if /i '%eingabe%' NEQ '' goto abfragepath
if /i '%eingabe%'=='' goto abfrage
goto abfrage

:abfragepath
REM ++ Abfrage der Funktionen +++++++++++
cls
echo +++++++++++++++++++++++++++++++++++++
echo +++ Bitte Geben Sie die Path vom Projekt +++
echo +++++++++++++++++++++++++++++++++++++
echo.
echo.
echo.

echo.
set /p eingabepath=ProjektPath:

if /i '%eingabepath%' NEQ '' goto projectname
if /i '%eingabepath%'=='' goto abfragepath
goto abfragepath

:projectname
Echo Jetzt beginnt die Installation vom Projekt
cd %eingabepath%
composer create-project symfony/website-skeleton %eingabe% & cd %eingabepath%/%eingabe% & composer require symfony/webpack-encore-bundle & yarn install & yarn add sass-loader sass webpack --dev & yarn add bootstrap --dev & yarn add @popperjs/core & yarn add jquery --dev & yarn add --dev @fortawesome/fontawesome-free & rename %eingabepath%\%eingabe%\assets\styles\app.css app.scss & break> %eingabepath%\%eingabe%\assets\styles\app.scss & echo @import "~bootstrap/scss/bootstrap"; > %eingabepath%\%eingabe%\assets\styles\app.scss & echo @import "~@fortawesome/fontawesome-free/scss/fontawesome"; >> %eingabepath%\%eingabe%\assets\styles\app.scss & echo @import "~@fortawesome/fontawesome-free/scss/solid"; >> %eingabepath%\%eingabe%\assets\styles\app.scss & echo @import "~@fortawesome/fontawesome-free/scss/regular"; >> %eingabepath%\%eingabe%\assets\styles\app.scss & echo @import "~@fortawesome/fontawesome-free/scss/brands"; >> %eingabepath%\%eingabe%\assets\styles\app.scss & echo @import "custom"; >> %eingabepath%\%eingabe%\assets\styles\app.scss & echo body { background-color:rgb(243, 211, 211);} > %eingabepath%\%eingabe%\assets\styles\custom.scss & break> %eingabepath%\%eingabe%\assets\app.js & echo import "./styles/app.scss"; > %eingabepath%\%eingabe%\assets\app.js & echo import "bootstrap"; >> %eingabepath%\%eingabe%\assets\app.js & break> %eingabepath%\%eingabe%\webpack.config.js & echo const Encore = require('@symfony/webpack-encore'); > %eingabepath%\%eingabe%\webpack.config.js & echo if (!Encore.isRuntimeEnvironmentConfigured()) { >> %eingabepath%\%eingabe%\webpack.config.js & echo     Encore.configureRuntimeEnvironment(process.env.NODE_ENV || 'dev'); >> %eingabepath%\%eingabe%\webpack.config.js & echo } >> %eingabepath%\%eingabe%\webpack.config.js & echo Encore >> %eingabepath%\%eingabe%\webpack.config.js & echo     // directory where compiled assets will be stored >> %eingabepath%\%eingabe%\webpack.config.js & echo     .setOutputPath('public/build/') >> %eingabepath%\%eingabe%\webpack.config.js & echo     // public path used by the web server to access the output path >> %eingabepath%\%eingabe%\webpack.config.js & echo     .setPublicPath('/build') >> %eingabepath%\%eingabe%\webpack.config.js & echo     // only needed for CDN's or sub-directory deploy >> %eingabepath%\%eingabe%\webpack.config.js & echo     //.setManifestKeyPrefix('build/') >> %eingabepath%\%eingabe%\webpack.config.js & echo     .addEntry('app', './assets/app.js') >> %eingabepath%\%eingabe%\webpack.config.js & echo     // enables the Symfony UX Stimulus bridge (used in assets/bootstrap.js) >> %eingabepath%\%eingabe%\webpack.config.js & echo     .enableStimulusBridge('./assets/controllers.json') >> %eingabepath%\%eingabe%\webpack.config.js & echo     // When enabled, Webpack "splits" your files into smaller pieces for greater optimization. >> %eingabepath%\%eingabe%\webpack.config.js & echo     .splitEntryChunks() >> %eingabepath%\%eingabe%\webpack.config.js & echo     // will require an extra script tag for runtime.js >> %eingabepath%\%eingabe%\webpack.config.js & echo     // but, you probably want this, unless you're building a single-page app >> %eingabepath%\%eingabe%\webpack.config.js & echo     .enableSingleRuntimeChunk() >> %eingabepath%\%eingabe%\webpack.config.js & echo     .cleanupOutputBeforeBuild() >> %eingabepath%\%eingabe%\webpack.config.js & echo     .enableBuildNotifications() >> %eingabepath%\%eingabe%\webpack.config.js & echo     .enableSourceMaps(!Encore.isProduction()) >> %eingabepath%\%eingabe%\webpack.config.js & echo     // enables hashed filenames (e.g. app.abc123.css) >> %eingabepath%\%eingabe%\webpack.config.js & echo     .enableVersioning(Encore.isProduction()) >> %eingabepath%\%eingabe%\webpack.config.js & echo     .configureBabel((config) =^> { >> %eingabepath%\%eingabe%\webpack.config.js & echo       config.plugins.push('@babel/plugin-proposal-class-properties'); >> %eingabepath%\%eingabe%\webpack.config.js & echo     }) >> %eingabepath%\%eingabe%\webpack.config.js & echo     .configureBabelPresetEnv((config) =^> { >> %eingabepath%\%eingabe%\webpack.config.js & echo       config.useBuiltIns = 'usage'; >> %eingabepath%\%eingabe%\webpack.config.js & echo         config.corejs = 3;  >> %eingabepath%\%eingabe%\webpack.config.js & echo     })>> %eingabepath%\%eingabe%\webpack.config.js & echo     // enables Sass/SCSS support >> %eingabepath%\%eingabe%\webpack.config.js & echo     .enableSassLoader() >> %eingabepath%\%eingabe%\webpack.config.js & echo     // uncomment if you use TypeScript >> %eingabepath%\%eingabe%\webpack.config.js & echo     //.enableTypeScriptLoader() >> %eingabepath%\%eingabe%\webpack.config.js & echo     // uncomment if you use React >> %eingabepath%\%eingabe%\webpack.config.js & echo     //.enableReactPreset() >> %eingabepath%\%eingabe%\webpack.config.js & echo     // uncomment to get integrity="..." attributes on your script &amp;amp; link tags >> %eingabepath%\%eingabe%\webpack.config.js & echo     // requires WebpackEncoreBundle 1.4 or higher >> %eingabepath%\%eingabe%\webpack.config.js & echo     //.enableIntegrityHashes(Encore.isProduction()) >> %eingabepath%\%eingabe%\webpack.config.js & echo     // uncomment if you're having problems with a jQuery plugin >> %eingabepath%\%eingabe%\webpack.config.js & echo     .autoProvidejQuery(); >> %eingabepath%\%eingabe%\webpack.config.js & echo module.exports = Encore.getWebpackConfig(); >> %eingabepath%\%eingabe%\webpack.config.js & php bin/console make:controller Home & symfony server:ca:install & symfony server:start -d & code . & start https://127.0.0.1:8000/home & yarn watch 
exit