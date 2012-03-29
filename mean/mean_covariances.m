% [] = XXXX()
%
% -----------------------------Definition---------------------------------%
%
% description
%
% usage : 
%
% -----------------------------Input--------------------------------------%
%
% XX : description + dimension
%
% -----------------------------Output-------------------------------------%
%
% XX : description + dimension
%
% -----------------------------References---------------------------------%
%
% [1] : XXX
%
%
%   Project : BCI-EEG
%
%   author : A. Barachant
%   date : 2011-XXXX
%   version : 1.0 
%   status : a terminer 
%   CEA/GRENOBLE-LETI/DTBS
%
%   See also MEAN, MEDIAN, RIEMAN_MEAN, REIMAN_MEDIAN.

% [EOF: XXX.m]

function C = mean_covariances(COV,method_mean,arg_mean)

if (nargin<2)||(isempty(method_mean))
    method_mean = 'arithmetic';
end
if (nargin<3)
    arg_mean = {};
end

switch method_mean
    case 'riemann'
        C = riemann_mean(COV,arg_mean);
    case 'median'
        C = median(COV,3);
    case 'riemannmed'
        C = riemann_median(COV,arg_mean);
    case 'logeuclid'
        C = logeuclid_mean(COV);
    otherwise
        C = mean(COV,3);
end