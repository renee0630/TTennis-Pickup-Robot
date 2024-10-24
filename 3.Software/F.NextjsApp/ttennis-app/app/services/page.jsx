"use client";

import {BsArrowDownRight} from "react-icons/bs";
import Link from "next/link";

import { motion } from "framer-motion";


const services = [
  {
    num: "建圖模式",
    title: "Mapping Mode",
    description: "建立桌球場的環境3D模型.",
    href: "/services/mapping"
  },
  {
    num: "撿球模式",
    title: "Fetching Mode",
    description: "在已建立的地圖中尋找並蒐集球.",
    href: "/services/fetching"
  },
  {
    num: "供球模式",
    title: "Serving Mode",
    description: "機器人將移動到指定地點供球.",
    href: "/services/serving"
  },
  {
    num: "倒球模式",
    title: "Pouring Mode",
    description: "機器人將移動到指定地點供球.",
    href: "/services/pouring"
  }
];


const Services = () => {
  return (
    <section className="min-h-[80vh] flex flex-col justify-center py-6 pl-5 pr-5"> 
      <div className="container mx-auto"> 
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1, transition: {delay:0, duration:0.4, ease: "easeIn"}}}
          className="grid grid-cols-2 gap-[60px]"
        >
          {services.map((service, index) => {
            return (
              <div 
                key={index} 
                className="flex-1 flex flex-col justify-center gap-3 group"
              > 

              {/* top */}
                <div className="w-full flex justify-between items-center">   
                  <Link href={service.href}>
                    <div className="text-[40px] font-extrabold group-hover:text-outline-hover transition-all duration-500">
                      {service.num}
                    </div>
                  </Link>

                {/* arrow */}
                <Link 
                  href={service.href} 
                  className="w-[60px] h-[60px] rounded-full
                  bg-white group-hover:bg-accent transition-all duration-500
                  flex justify-center items-center hover:-rotate-45" 
                  style={{ padding: '20px' }}
                >
                  <BsArrowDownRight className="text-primary text-3xl hover:text-4xl"/>
                </Link>
              </div>

              {/* title */}
              <Link href={service.href}>
                <h2 className="text-3xl font-bold leading-none 
                text-white group-hover:text-accent transition-all duration-500"
                href={service.href}> 
                  {service.title}
                </h2>
              </Link>

              {/* description */}
              <p className="text-white/80 text-[15pt]"> {service.description} </p>

              {/* border */}
              <div className="border-b border-white/20 w-full"> </div>
            </div>
            )
          })}
        </motion.div>
      </div>
    </section>
  );
};

export default Services;