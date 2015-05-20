import Network.HTTP

main :: IO ()
main = create 3

-- create from do api using curl
create :: Integer -> IO ()
create n = do
    let disco = "https://discovery.etcd.io/new?size=" ++ show n
    Right (Response _ _ _ s) <- simpleHTTP (getRequest disco)
    print s
    return ()
-- curl discovery url

-- destroy from do api using curl
destroy :: IO ()
destroy = undefined
