<<<<<<< HEAD
# DBank
DBank is decentralised finance assisstance app created using Motoko. 
=======
# dbank
dbank is standsfor decentralised bank, a finance assistance app that can calculate compoung interest on a given principal amount, rate of interest and time period. It was coded in Motoko.

# Motoko
Motoko is a modern, general-purpose programming language you can use specifically to author ICP canister smart contracts. Although aimed primarily at ICP canister development, its design is general enough to support future compilation to other targets.

Motoko is designed to be approachable for programmers who have some basic familiarity with object-oriented and/or functional programming idioms in either JavaScript, or another modern programming language, such as Rust, Swift, TypeScript, C#, or Java.
# ICP
Internet Computer, which hosts decentralized serverless compute. A simpler, cyber-attack resistant decentralised platform for decentralised apps.
# Dbank structure.
The main code for this, resides within src/dbank/main.mo
Motoko consists of actors, which are the primary building blocks in Motoko, representing units of deployment that can maintain state and execute concurrent actions.
# Install and running
- Navigate to the directory.
- Make sure you have node.js installed on your local environment, or wherever you wish to run. `use node --version` to check your current installed version.
- Next, you need `dfx` which is Dfinity's command-line execution tool. There may be other ways, but I am listing out how I worked on this project.
- use `dfx start` to start building the program from your motoko code, then use `dfx deploy` to host it on a local environment, such as `localhost`

You may need to run this on either a linux system or a WSL, as to my knowledge, dfx is currently supported on environments running on Linux.
