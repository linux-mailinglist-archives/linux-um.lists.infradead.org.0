Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A742B109570
	for <lists+linux-um@lfdr.de>; Mon, 25 Nov 2019 23:10:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OiUBmKfrjG1Su3CpNo2kB28NP3olgnME/Bvo+IeZWEI=; b=QbhoplDT77YBAD
	oLotHWi3TmpL8e/y+uatE9Jw3Ba3Y4P1dqZS5iQKzz+z5SUQ3nTiYY+4t3/ldxhE1NAqzDi2hQmi1
	6U7WXcuet4C81MtgGq4mKU/WRdd3Ld60Nt67byaECrcNDCHdP35el1nVdpPA1nW6C3opr/Unz+GUw
	gnOO5ui5RD2pjIKdJteJGkLmo8KUilCFudPGABBrj6kAbf+SPIvheNY8GV0J80W7GH6Jy6lb9rPrx
	twdwRJOQz2g02CquHEDGQnIwD8rWpG2VNDFtwTsZNcuvMlUh6hAj9SJeVR/gF+CQLvAnEVWZUGzzW
	yqQ0EE8dW8L2IVHke/SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZMZC-0002k2-EP; Mon, 25 Nov 2019 22:10:46 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZMZ6-0002jV-VX
 for linux-um@lists.infradead.org; Mon, 25 Nov 2019 22:10:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id i12so20140495wro.5
 for <linux-um@lists.infradead.org>; Mon, 25 Nov 2019 14:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GItM9XLVqxNn0sdCUQLWJSBGa3kbJqyrc/moSFwmETQ=;
 b=t67XsscUtvcYGFCu8/pIb4nslkXMYNqiyJiOG6SoOj4ZqNd89J3VGLiwTqIUI6b9J+
 7DbWj7wFe+bCCtuCpWSvdHNJbtWiXZT3f8I4rQw7DYAJgTSB4VHF2sh2RbifavpAMLsO
 dL+RcSI7YmWFOZWpd8Em6jFk1VHTJbqQK1jeRIxyVW3wRGcnhvKTHXSGgkZbuhYtulFu
 jDecJAvU4i18f4G0IjLJULRXdmHXrccFv2TZFs16gxm6SCLI33T4hSFI/5OtwQzGU1UB
 XLpjn571eDW1ABVd0EyWibRC+MTK10vsVm0oTRuQ/BA9v1TSpIz27cbs5rdLu/M3jcdi
 7UaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GItM9XLVqxNn0sdCUQLWJSBGa3kbJqyrc/moSFwmETQ=;
 b=hD8rQAxHTY+eO2tY2v8Z/sxeVnLM3OCfv3wCUQ+hyylP5OifOlcvu7q7rvkGOzCQUz
 QfoEJi4dFRqtg3inzjGZzZBOqMNZghDVZMFlH0kBfk3K+jE6F3bOhDUXjPn5GhC5LlJt
 P+nV5eYLKUAwfAVIYl7GWZzBWr5wjPMSGQKktOfthe/pKnkUeAFme1L3qh0vf5BOpybU
 tDrpT3+9URG9ij4PSxYSet/WDgK4V6i5R7KkkertnOY07hL8EXi+bkDwhpS62dxOMgUm
 NsM0sGqOZ4gzODbN82sg05NX3yaPFo+D8CKJOw7zsWT0UVhbxgzFBJM+iloRVHSkJ5ce
 CyCA==
X-Gm-Message-State: APjAAAVdDpJFDAlc51+mDCfbusOG5KDNIcxjpjsn/7aokZnVEAkBJJX9
 Kf9RnKl9au7A7hp4fTfPZfrz5V1FHif4PuFD3HI=
X-Google-Smtp-Source: APXvYqwBxzAgMD5XGrXyFXjrbhvtES5ZQl5cOm5abQnJ/u/OZu7x70kQ6wDw5nzpVIVbQS0elzuU7ZjqYZOS8PWR1NY=
X-Received: by 2002:adf:c449:: with SMTP id a9mr32838029wrg.240.1574719839492; 
 Mon, 25 Nov 2019 14:10:39 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573179553.git.thehajime@gmail.com>
 <8b0c833bde42e761cadfd3542263ad7a8be5eb5b.1573179553.git.thehajime@gmail.com>
In-Reply-To: <8b0c833bde42e761cadfd3542263ad7a8be5eb5b.1573179553.git.thehajime@gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 25 Nov 2019 23:10:28 +0100
Message-ID: <CAFLxGvw_tkmAq0nGrgEs8jQFGLADDuAyUOsYhdDzAH5yhHFHEA@mail.gmail.com>
Subject: Re: [RFC v2 05/37] lkl: memory handling
To: Hajime Tazaki <thehajime@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_141041_015570_52745BEC 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Linux-Arch <linux-arch@vger.kernel.org>, Levente Kurusa <levex@linux.com>,
 Octavian Purdila <tavi.purdila@gmail.com>, linux-um@lists.infradead.org,
 Akira Moroo <retrage01@gmail.com>, linux-kernel-library@freelists.org,
 Yuan Liu <liuyuan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 6:03 AM Hajime Tazaki <thehajime@gmail.com> wrote:
>
> From: Octavian Purdila <tavi.purdila@gmail.com>
>
> LKL is a non MMU architecture and hence there is not much work left to
> do other than initializing the boot allocator and providing the page
> and page table definitions.
>
> The backstore memory is allocated via a host operation and the memory
> size to be used is specified when the kernel is started, in the
> lkl_start_kernel call.
>
> Signed-off-by: H.K. Jerry Chu <hkchu@google.com>
> Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
> Signed-off-by: Levente Kurusa <levex@linux.com>
> Signed-off-by: Yuan Liu <liuyuan@google.com>
> Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
> ---
>  arch/um/lkl/include/asm/page.h          | 14 ++++++
>  arch/um/lkl/include/asm/pgtable.h       | 62 +++++++++++++++++++++++
>  arch/um/lkl/include/uapi/asm/host_ops.h |  5 ++
>  arch/um/lkl/mm/bootmem.c                | 66 +++++++++++++++++++++++++

This is also something which needs unification with UML.
UML in NOMMU mode would be LKL then...

--
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
