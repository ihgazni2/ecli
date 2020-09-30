.. contents:: Table of Contents
   :depth: 5


*ecli*
------------



Installation
============

    ::
    
        $ pip3 install ecli

Usage
=====
    
CLI    
^^^


ecli_dir2pls
############
    
    ::
        
        RESOURCES# ecli_dir2pls
        ['opt', 'PY3', 'ECLI_', 'ecli', 'RESOURCES', 'BENCH']
        ['opt', 'PY3', 'ECLI_', 'ecli', 'RESOURCES', 'BENCH', 'git']
        ['opt', 'PY3', 'ECLI_', 'ecli', 'RESOURCES', 'BENCH', 'set_root']
        ['opt', 'PY3', 'ECLI_', 'ecli', 'RESOURCES', 'BENCH', 'fdisk']
        ['opt', 'PY3', 'ECLI_', 'ecli', 'RESOURCES', 'BENCH', 'py3']
        ['opt', 'PY3', 'ECLI_', 'ecli', 'RESOURCES', 'BENCH', 'terminal']
        ['opt', 'PY3', 'ECLI_', 'ecli', 'RESOURCES', 'BENCH', 'dir']
        ['opt', 'PY3', 'ECLI_', 'ecli', 'RESOURCES', 'BENCH', 'gcc']
        ['opt', 'PY3', 'ECLI_', 'ecli', 'RESOURCES', 'BENCH', 'js']
        ['opt', 'PY3', 'ECLI_', 'ecli', 'RESOURCES', 'BENCH', 'vim']
        ['opt', 'PY3', 'ECLI_', 'ecli', 'RESOURCES', 'BENCH', 'rpm']
        =======
        /opt/PY3/ECLI_/ecli/RESOURCES/BENCH
        /opt/PY3/ECLI_/ecli/RESOURCES/BENCH/git
        /opt/PY3/ECLI_/ecli/RESOURCES/BENCH/set_root
        /opt/PY3/ECLI_/ecli/RESOURCES/BENCH/fdisk
        /opt/PY3/ECLI_/ecli/RESOURCES/BENCH/py3
        /opt/PY3/ECLI_/ecli/RESOURCES/BENCH/terminal
        /opt/PY3/ECLI_/ecli/RESOURCES/BENCH/dir
        /opt/PY3/ECLI_/ecli/RESOURCES/BENCH/gcc
        /opt/PY3/ECLI_/ecli/RESOURCES/BENCH/js
        /opt/PY3/ECLI_/ecli/RESOURCES/BENCH/vim
        /opt/PY3/ECLI_/ecli/RESOURCES/BENCH/rpm
        RESOURCES#


ecli_dir2json
#############
    
    ::
        
        ecli# cd RESOURCES/
        RESOURCES# ecli_dir2json
        {"opt": {"PY3": {"ECLI_": {"ecli": {"RESOURCES": {"BENCH": {"git": {}, "set_root": {}, "fdisk": {}, "py3": {}, "terminal": {}, "dir": {}, "gcc": {}, "js": {}, "vim": {}, "rpm": {}}}}}}}}
        RESOURCES#



ecli_jsonq
##########

- ecli_jsonq json-file key key key .....

loosely
~~~~~~~
    
    ::
        
        #loosely search
        #ecli_jsonq nest.json display
        
.. image:: docs/jsonq-loose.png


exactly
~~~~~~~

    ::
        
        #exact search 
        #ecli_jsonq nest.json Displays 0

.. image:: docs/jsonq-exact.png

listall
~~~~~~~~
    
    ::
        
        #listall 
        #ecli_jsonq nest.json

.. image:: docs/jsonq-listall.png


ecli_pobj
#########
    
    ::
        
         #ecli_pobj -path pobj.json

.. image:: docs/pobj-json.png


ecli_htmlq
##########

ecli_html_tagq
~~~~~~~~~~~~~~
    
    ::
        
        #ecli_html_tagq tst.html "ead me"

.. image:: docs/html-tagq.png

ecli_html_attrq
~~~~~~~~~~~~~~~
    
    ::
        
        #ecli_html_attrq tst.html "src"

.. image:: docs/html-attrq.png

ecli_html_txtq
~~~~~~~~~~~~~~~
    
    ::
        
        #ecli_html_txtq tst.html "pdf"

.. image:: docs/html-txtq.png

License
=======

- MIT
